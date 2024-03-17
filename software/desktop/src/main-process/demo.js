/**
 * @file Configure routines.
 * @copyright Copyright (c) Sparky Bobo Designs. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 */
'use strict';

const { app } = require('electron');
const { SerialPort, ReadlineParser } = require('serialport');

const ipcHandler = require('./ipcHandler');
const { currentBoards, boardEvents } = require('./configure');

let currentTxBoard;
let currentRxBoard;
let currentFsBoard;

let sendTxCompactStatus;
let sendRxCompactStatus;

let sendTxVerboseStatus;
let sendRxVerboseStatus;

// Close ports when all windows are closing
app.on('before-quit', () => {
    if (currentTxBoard) {
        currentTxBoard.closePort();
    }

    if (currentRxBoard) {
        currentRxBoard.closePort();
    }
});

// Look for tx and rx boards.
boardEvents.on('board', (board) => {

    console.log('boardEvents callback ', board.path);

    // Tx board
    if (board?.boardType == 1 && !currentTxBoard) {
        currentTxBoard = board;
        console.log('Found currentTxBoard ', board.path);
    }

    if (currentTxBoard?.path == board?.path) {
        ipcHandler.demoApi.sendBoardTx(currentTxBoard?.getDisplayInfo());
        setTxStatus(sendRxCompactStatus, sendRxVerboseStatus);
    }

    // Rx board
    if (board?.boardType == 2 && !currentRxBoard) {
        currentRxBoard = board;
        console.log('Found currentRxBoard ', board.path);
    }

    if (currentRxBoard?.path == board?.path) {
        ipcHandler.demoApi.sendBoardRx(currentRxBoard?.getDisplayInfo());
        setRxStatus(sendRxCompactStatus, sendRxVerboseStatus);
    }

    // Fs board
    if (board?.boardType == 3 && !currentFsBoard) {
        currentFsBoard = board;
        console.log('Found currentFsBoard ', board.path);
    }

    if (currentFsBoard?.path == board?.path) {
        ipcHandler.demoApi.sendBoardFs(currentFsBoard?.getDisplayInfo());
        //setRxStatus(sendRxCompactStatus, sendRxVerboseStatus);
    }
});

// Valid current boards
boardEvents.on('allBoardsList', (boards) => {

    // Clear boardsnew boards are being discovered.
    currentTxBoard = undefined;
    currentRxBoard = undefined;
    currentFsBoard = undefined;
});

// Handle requests for boards
ipcHandler.demoApi.onGetDemoBoards(() => {
    ipcHandler.demoApi.sendBoardTx(currentTxBoard?.getDisplayInfo());
    ipcHandler.demoApi.sendBoardRx(currentRxBoard?.getDisplayInfo());
    ipcHandler.demoApi.sendBoardFs(currentFsBoard?.getDisplayInfo());
});

// Handle requests for status updates.
ipcHandler.demoApi.onSetTxStatus((cstate, vstate) => {
    setTxStatus(cstate, vstate);
});

ipcHandler.demoApi.onSetRxStatus((cstate, vstate) => {
    setRxStatus(cstate, vstate);
});

ipcHandler.demoApi.onClockSlow(() => {
    console.log('slow');
    if (currentTxBoard) {
        currentTxBoard.clockSlow();
    }
});

ipcHandler.demoApi.onClockFast(() => {
    if (currentTxBoard) {
        currentTxBoard.clockFast();
    }
});

ipcHandler.demoApi.onClockStep(() => {
    if (currentTxBoard) {
        currentTxBoard.clockStep();
    }
});

ipcHandler.demoApi.onScrambleEnable(() => {
    if (currentFsBoard) {
        currentFsBoard.scrambleEnable();
    }
});

ipcHandler.demoApi.onScrambleToggle(() => {
    if (currentFsBoard) {
        currentFsBoard.scrambleToggle();
    }
});

ipcHandler.demoApi.onScrambleClear(() => {
    if (currentFsBoard) {
        currentFsBoard.scrambleClear();
    }
});

/**
 * Find a boards index from its path
 *
 * @param {string} path - The board path.
 */
function getIndexFromPath(boards, path) {
    var index = -1;
    if (boards) {
        index = boards.findIndex((b) => {
            return b.path.trim() === path.trim();
        });
    }
    return index;
};

/**
 * Set the Tx Status
 *
 * @param {*} cstate The state of compact status.
 * @param {*} vstate The state of verbose status.
 */
function setTxStatus(cstate, vstate) {
    sendTxCompactStatus = cstate;
    sendTxVerboseStatus = vstate;

    if (currentTxBoard) {
        if (sendTxCompactStatus) {
            currentTxBoard.startListening(sendTxVerboseStatus, (line) => {
                ipcHandler.demoApi.sendTxStatus(line);
            });
        } else {
            currentTxBoard.stopListening();
        }
    }
};

/**
 * Set the Rx Status
 *
 * @param {*} cstate The state of compact status.
 * @param {*} vstate The state of verbose status.
 */
function setRxStatus(cstate, vstate) {
    sendRxCompactStatus= cstate;
    sendRxVerboseStatus = vstate;

    if (currentRxBoard) {
        if (sendRxCompactStatus) {
            currentRxBoard.startListening(sendRxVerboseStatus, (line) => {
                ipcHandler.demoApi.sendRxStatus(line);
            });
        } else {
            currentRxBoard.stopListening();
        }
    }
};
