 /**
  * @file Board support.
  * @copyright Copyright (c) Crazy Giraffe Software. All rights reserved.
  * @license Licensed under the MIT License. See License.txt in the project root for license information.
  */
 'use strict';

 const SerialPort = require('serialport');
 const Readline = SerialPort.parsers.Readline;

 const Avrgirl = require('avrgirl-arduino');
 const boards = require('./supported-boards');
 const shields = require('./supported-shields');
 const sketches = require('./supported-sketches');
 const ipc = require('electron').ipcMain;
 const path = require('path');

 let currentBoards = null;
 let currentTxBoard = null;
 let currentRxBoard = null;

 const portOptions = {
     autoOpen: false,
     baudRate: 115200,
     dataBits: 8,
     stopBits: 1,
     parity: 'none'
 };

 /* Return the list of detected boards. */
 ipc.on('configure-board-request', function (event, arg) {
     if (currentBoards) {
         event.reply('configure-board-list', currentBoards);
     } else {
         refreshBoards(event, arg);
     }
 });

 ipc.on('demo-board-request', function (event, arg) {
     if (currentTxBoard) {
         event.reply('demo-board-tx', currentTxBoard);
     }
     if (currentRxBoard) {
         event.reply('demo-board-rx', currentRxBoard);
     }
     // No need to refresh as "configure-board-request" is also
     // sent, which refreshes the boards and send them is found.
 });

 /* Refresh the list of detected boards. */
 ipc.on('configure-board-refresh', function (event, arg) {
     refreshBoards(event, arg);
 });

 /* Discover the shield, i.e. load the discovery sketch. */
 ipc.on('configure-board-discover', function (event, index) {
     if (currentBoards.length <= index) {
         event.reply('configure-board-discover-invalid');
         return;
     }

     let boardOption = currentBoards[index].boardOption;
     if (!boardOption) {
         event.reply('configure-board-discover-invalid');
         return;
     }

     loadSketch(event, 'configure-board-shield', index, boardOption);
 });

 /* Load the sketch */
 ipc.on('configure-board-load', function (event, index) {
     if (currentBoards.length <= index) {
         event.reply('configure-board-load-invalid');
         return;
     }

     let boardOption = currentBoards[index].boardOption;
     if (!boardOption) {
         event.reply('configure-board-load-invalid');
         return;
     }

     loadSketch(event, 'configure-board-sketch', index);
 });

 /**
  * Return a list of supported devices on serial ports.
  *
  * @param {Object} event - The event from ipc.
  * @param {any} arg - The arg from ipc.
  */
 function refreshBoards(event, arg) {
     Avrgirl.prototype.listPorts(function (error, ports) {
         if (error) {
             event.reply('configure-board-error', error);
             return;
         }

         // filter for a match by product id
         let validPorts = ports.filter(function (p) {
             var currentPid = parseInt(p._standardPid, 16);
             let board = boards[currentPid];
             return boards[currentPid];
         });

         console.log(`Found ports: ${JSON.stringify(validPorts)}`);

         // convert to a friendly list
         let validBoards = validPorts.map(function (p) {
             var currentPid = parseInt(p._standardPid, 16);
             return {
                 path: p.path,
                 manufacturer: p.manufacturer,
                 productId: p._standardPid,
                 vendorId: p.vendorId,
                 serialNumber: p.serialNumber,
                 boardName: boards[currentPid].name,
                 boardImage: boards[currentPid].image,
                 boardOption: boards[currentPid].boardOption,
                 discoverySketch: boards[currentPid].discoverySketch,
                 shieldName: null,
                 shieldImage: null,
                 shieldProgress: null,
                 sketchName: null,
                 sketchFile: null,
                 sketchVersion: null,
                 sketchProgress: null,
                 sketchStatus: null,
                 sketchNeedsUpdate: null,
                 sketchNeedsLoad: null,
             };
         });

         currentBoards = validBoards;
         event.reply('configure-board-list', validBoards);

         if (validBoards) {
             let index = 0;
             Array.prototype.forEach.call(validBoards, (validBoard) => {
                 discoverShieldAndSketch(event, index, validBoard);
                 index++;
             });
         }
     });
 };

 /**
  * Discovery the shield sketch.
  *
  * @param {number} index - The UI index of the board.
  * @param {Object} boards - The board information.
  */
 function discoverShieldAndSketch(event, index, board) {
     const discoverPort = new SerialPort(board.path, portOptions);
     const parser = discoverPort.pipe(new Readline({
         delimiter: '\r\n'
     }));

    //  let discoverTimeoutId = setTimeout(() => {
    //     console.log(`Sending 'i' to ${board.path}`);
    //     discoverPort.write("i\\r\\n");
    //  }, 2000);

     let autoCloseTimeoutId = setTimeout(() => {
        console.log(`Closing ${board.path}`);
        if (discoverPort.isOpen) discoverPort.close();
     }, 1000);

     discoverPort.open(() => {
         console.log(`Open port ${board.path}`);
         discoverPort.write("i\\r\\n");
     });

     parser.on('data', (line) => {
         console.log(`Received ${line.length} bytes of data from ${board.path}: ${line}`);

         let lineParts = line.split(" ");
         if (lineParts.length >= 4) {
             if (lineParts[0] == "DMX" && lineParts[1] == "Demonstrator" && lineParts[3] == "Version") {
                 let sketchId = lineParts[2];
                 let discoveredSketch = sketches[sketchId];
                 console.log(`Found ${sketchId}:${JSON.stringify(discoveredSketch)}`);
                 if (discoveredSketch) {
                     currentBoards[index].sketchName = discoveredSketch.name;
                     currentBoards[index].sketchFile = discoveredSketch.file;
                     currentBoards[index].sketchVersion = lineParts[4];
                     event.reply('configure-board-sketch', index, currentBoards[index]);

                     if (discoveredSketch.isTx && !currentTxBoard) {
                         currentTxBoard = currentBoards[index];
                         event.reply('demo-board-tx', currentTxBoard);
                     }

                     if (discoveredSketch.isRx && !currentRxBoard) {
                         currentRxBoard = currentBoards[index];
                         event.reply('demo-board-rx', currentRxBoard);
                     }
                 }
             }

             if (lineParts[0] == "Hardware" && lineParts[1] == "Detection:") {
                 let shieldId = lineParts[3];
                 let discoveredShield = shields[shieldId];
                 console.log(`Found ${shieldId}:${JSON.stringify(discoveredShield)}`);
                 if (discoveredShield) {
                     currentBoards[index].shieldName = discoveredShield.name;
                     currentBoards[index].shieldImage = discoveredShield.image;
                     currentBoards[index].shieldProgress = null;
                     event.reply('configure-board-shield', index, currentBoards[index]);
                 }
             }
         }
     });
 }

 /**
  * Load a sketch.
  *
  * @param {Object} event - The event from ipc.
  * @param {string} eventId - The event id  to send.
  * @param {number} index - The UI index of the board.
  * @param {Object} boardsOptions - The board options.
  */
 function loadSketch(event, eventId, index, boardOption) {
    //  let avrgirl = new Avrgirl({
    //      board: boardOption,
    //      port: currentBoards[index].port
    //  });

    //  currentBoards[index].shieldProgress = 50;
    //  event.reply(eventId, index, currentBoards[index]);

    //  avrgirl.flash('.\\src\\assets\\hex\\discovery.ino.hex.leonardo', function (error) {
    //      if (error) {
    //          console.error(error);
    //      } else {
    //          console.info('Loading complete.');
    //          discoverShieldAndSketch(event, index, currentBoards[index]);
    //      }
    //      currentBoards[index].shieldProgress = null;
    //      event.reply(eventId, index, currentBoards[index]);
    //  });
 }
