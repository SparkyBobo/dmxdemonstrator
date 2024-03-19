/**
 * @file Configure routines.
 * @copyright Copyright (c) Sparky Bobo Designs. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 */
'use strict';

const EventEmitter = require('node:events');
const { SerialPort, ReadlineParser } = require('serialport');

const ipcHandler = require('./ipcHandler');
const Board = require('./models/board.js');
const boards = require('./models/supported-boards.js');

const boardEvents = new EventEmitter();
let currentBoards;

/**
 * Return a list of supported devices on serial ports.
 */
ipcHandler.configureApi.onGetAllBoards(() => {
    if (currentBoards) {
        ipcHandler.configureApi.sendAllBoardsList(currentBoards.map((b) => b.getDisplayInfo()));
    } else {
        refreshAllBoards();
    }
});

ipcHandler.configureApi.onRefreshAllBoards(async () => {
    await refreshAllBoards();
});

/**
 * Scan for supported devices on serial ports.
 */
async function refreshAllBoards() {

    // list all available ports and discover the attached boards.
    var discoverPorts = function() {
        SerialPort.list().then((ports) => {

            // iterate through ports
            var foundPorts = [];
            for (var i = 0; i < ports.length; i += 1) {
                var pid;

                // Parse pid
                if (ports[i].productId) {
                    pid = ports[i].productId;
                } else if (ports[i].pnpId) {
                    try {
                    pid = '0x' + /PID_\d*/.exec(ports[i].pnpId)[0].substr(4);
                    } catch (err) {
                    pid = '';
                    }
                } else {
                    pid = '';
                }

                ports[i]._standardPid = pid;
                foundPorts.push(ports[i]);
            }

            // filter for a match by product id
            let validPorts = foundPorts.filter(function (p) {
                var currentPid = parseInt(p._standardPid, 16);
                let board = boards[currentPid];
                return boards[currentPid];
            });

            console.log(`Found ports: ${JSON.stringify(validPorts)}`);

            // convert to a friendly list
            let validBoards = validPorts.map((p) => {
                var currentPid = parseInt(p._standardPid, 16);
                var board = new Board(p.path, p.manufacturer, p._standardPid, p.vendorId, p.serialNumber);
                board.boardName = boards[currentPid].name;
                board.boardImage = boards[currentPid].image;
                board.boardOption = boards[currentPid].boardOption;
                board.discoverySketch = boards[currentPid].discoverySketch;
                return board;
            });

            // Send board list
            currentBoards = validBoards;
            ipcHandler.configureApi.sendAllBoardsList(currentBoards.map((b) => b.getDisplayInfo()));
            boardEvents.emit('allBoardsList', currentBoards);

            // Discover boards.
            if (validBoards) {
                Array.prototype.forEach.call(validBoards, (validBoard) => {
                    validBoard.discoverShieldAndSketch((error) =>{
                        if (!error) {
                            console.log('Discovered callback: ', validBoard.path);
                            ipcHandler.configureApi.sendBoard(validBoard.getDisplayInfo());
                            boardEvents.emit('board', validBoard);
                        }
                    });
                });
            }
        }).catch(function(error) {
            console.log(error)
            ipcHandler.configureApi.sendAllBoardsError(error);
            boardEvents.emit('allBoardsError', error);
        });
    }

    // Cleanup existing boards
    if (currentBoards) {
        console.log('Cleanup boards');
        Promise.all(currentBoards.map(async (currentBoard) => {
            return currentBoard.closePort();
        })).then(() => {
            console.log('Discover boards');
            discoverPorts()
        });
    } else {
        console.log('Discover boards w/o cleanup');
        discoverPorts();
    }
}

/**
 * Find a boards index from its path
 *
 * @param {string} path - The board path.
 */
function getIndexFromPath(path) {
    var index = -1;
    if (currentBoards) {
        index = currentBoards.findIndex((b) => {
            return b.path.trim() === path.trim();
        });
    }
    return index;
};

module.exports = { currentBoards, boardEvents }

