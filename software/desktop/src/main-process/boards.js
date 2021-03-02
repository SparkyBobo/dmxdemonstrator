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

let currentBoards = null;

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

    // let avrgirl = new Avrgirl({
    //     board: boardOption,
    //     port: currentBoards[index].port
    //     });
    // avrgirl.flash('Blink.cpp.hex', function (error) {
    //     if (error) {
    //       console.error(error);
    //     } else {
    //       console.info('done.');
    //     }
    //   });
});

/* Load the sketch */
ipc.on('configure-board-load', function (event, index) {
    if (currentBoards.length <= index) {
        event.reply('configure-board-discover-invalid');
        return;
    }

    let boardOption = currentBoards[index].boardOption;
    if (!boardOption) {
        event.reply('configure-board-discover-invalid');
        return;
    }

    // let avrgirl = new Avrgirl({
    //     board: boardOption,
    //     port: currentBoards[index].port
    //     });
    // avrgirl.flash('Blink.cpp.hex', function (error) {
    //     if (error) {
    //       console.error(error);
    //     } else {
    //       console.info('done.');
    //     }
    //   });
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
            return boards[currentPid];
        });

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
    const parser = discoverPort.pipe(new Readline({ delimiter: '\r\n' }));

    let autoCloseTimeoutId = setTimeout(() => {
        discoverPort.close();
    }, 1000);

    discoverPort.open(() => {
        discoverPort.write("i\\r\\n");
    });

    parser.on('data', (line) => {
        console.log(`Received ${line.length} bytes of data: ${line}`);

        let lineParts = line.split(" ");
        if (lineParts.length >= 4) {
            if (lineParts[0] == "DMX" && lineParts[1] == "Demonstrator" && lineParts[3] == "Version") {
                let sketchId = lineParts[2];
                let discoveredSketch = sketches[sketchId];
                console.log(`Found ${sketchId}:${JSON.stringify(discoveredSketch)}`);
                if (discoveredSketch) {
                    currentBoards[index].sketchName = discoveredSketch.name;
                    currentBoards[index].sketchFile = discoveredSketch.image;
                    currentBoards[index].sketchVersion = lineParts[4];
                    event.reply('configure-board-sketch', index, currentBoards[index]);
                }

                // Temporary hack
                if (discoveredSketch.name == "Receiver") {
                    let shieldId = "DMX-RX1";
                    currentBoards[index].shieldName = shields[shieldId].name;
                    currentBoards[index].shieldImage = shields[shieldId].image;
                    currentBoards[index].shieldProgress = null;
                    event.reply('configure-board-shield', index, currentBoards[index]);
                }
            }
        }

        let shieldIndex = line.indexOf("DMX-");
        if (shieldIndex >= 0) {
            let shieldId = line.substring(shieldIndex, shieldIndex + 7);
            let discoveredShield = shields[shieldId];
            console.log(`Found ${shieldId}:${JSON.stringify(discoveredShield)}`);
            if (discoveredShield) {
                currentBoards[index].shieldName = discoveredShield.name;
                currentBoards[index].shieldImage = discoveredShield.image;
                currentBoards[index].shieldProgress = null;
                event.reply('configure-board-shield', index, currentBoards[index]);
            }
        }
    });
}

/*
    // currentBoards[index].sketchName = "Transmitter";
    // currentBoards[index].sketchFile = 'Transmitter.ino';
    // currentBoards[index].sketchVersion = '1.0';
    currentBoards[index].sketchStatus = true;
    currentBoards[index].sketchNeedsUpdate = false;
    currentBoards[index].sketchNeedsLoad = true;
    currentBoards[index].shieldProgress = null;
    //event.reply('configure-board-sketch', index, currentBoards[index]);

function attachEventsHandlers(error) {
    var discoverButtons = document.querySelector('.configure-board-shield-discover')
    if (discoverButtons) {
        discoverButtons.addEventListener('click', (event) => {

            // Get the index
            let buttonIdParts = event.target.id.split('-');
            let index = buttonIdParts[buttonIdParts.length-1];

            // Hide the button
            event.target.classList.add('is-hidden');

            // Show the progress bar
            let progressBar = document.querySelector(`#id-configure-board-shield-progress-${index}`);
            if (progressBar) {
                progressBar.value = 0;
                progressBar.classList.remove('is-hidden');

                // Simulate progress bar.
                var intervalId = setInterval(updateProgress, 100);
                function updateProgress () {
                    progressBar.value += 1;
                    if (progressBar.value >= 100) {
                        clearInterval(intervalId);
                        updateShield(index);
                    }
                };
            }
        })
    }
};
*/
