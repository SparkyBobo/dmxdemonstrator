/**
 * @file Ipc Handler for the mian process.
 * @copyright Copyright (c) Sparky Bobo Designs. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 */
'use strict';

const { ipcMain } = require('electron/main');

let sendToMainWindowCallback = (api, val) => { console.log("sendToMainWindow not registered in ipcHandler\r\n"); };

var ipcHandler = {
    onSendToMainWindow: (callback) => {
        sendToMainWindowCallback = callback;
    },
    navigationApi: {
        onSetActiveSectionButtonId: (callback) => { ipcMain.on('setActiveSectionButtonId', (_event, sectionButtonId) => callback(sectionButtonId)); },
        onGetActiveSectionButtonId: (callback)  => { ipcMain.on('getActiveSectionButtonId', (_event) => callback()); },
        sendActiveSectionButtonId: (sectionButtonId) => { sendToMainWindowCallback('activeSectionButtonId', sectionButtonId); }
    },
    configureApi: {
        onGetAllBoards: (callback) => { ipcMain.on('getAllBoards', (_event) => callback()); },
        onRefreshAllBoards: (callback) => { ipcMain.on('refreshAllBoards', (_event) => callback()); },
        sendAllBoardsError: (error) => { sendToMainWindowCallback('allBoardsError', error); },
        sendAllBoardsList: (boards) => { sendToMainWindowCallback('allBoardsList', boards); },
        sendBoard: (board) => { sendToMainWindowCallback('board', board); },
    },
    demoApi: {
        onGetDemoBoards: (callback) => { ipcMain.on('getDemoBoards', (_event) => callback()); },
        sendBoardTx: (board) => { sendToMainWindowCallback('boardTx', board); },
        sendBoardRx: (board) => { sendToMainWindowCallback('boardRx', board); },
        sendBoardFs: (board) => { sendToMainWindowCallback('boardFs', board); },
        onSetTxStatus: (callback) => { ipcMain.on('setTxStatus', (_event, cstate, vstate) => callback(cstate, vstate)); },
        onSetRxStatus: (callback) => { ipcMain.on('setRxStatus', (_event, cstate, vstate) => callback(cstate, vstate)); },
        onSetFsStatus: (callback) => { ipcMain.on('setFsStatus', (_event, cstate, vstate) => callback(cstate, vstate)); },
        sendTxStatus: (status) => { sendToMainWindowCallback('txBoardStatus', status); },
        sendRxStatus: (status) => { sendToMainWindowCallback('rxBoardStatus', status); },
        sendFsStatus: (status) => { sendToMainWindowCallback('fsBoardStatus', status); },
        onClockSlow: (callback) => { ipcMain.on('clockSlow', (_event) => { callback(); console.log('slow ipc'); }); },
        onClockFast: (callback) => { ipcMain.on('clockFast', (_event) => callback()); },
        onClockStep: (callback) => { ipcMain.on('clockStep', (_event) => callback()); },
        onScrambleEnable: (callback) => { ipcMain.on('scrambleEnable', (_event) => callback()); },
        onScrambleToggle: (callback) => { ipcMain.on('scrambleToggle', (_event) => callback()); },
        onScrambleClear: (callback) => { ipcMain.on('scrambleClear', (_event) => callback()); },
    },
};

module.exports = ipcHandler;
