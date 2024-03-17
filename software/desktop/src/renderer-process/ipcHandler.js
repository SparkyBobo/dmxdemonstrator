/**
 * @file Renderer Preload.
 * @copyright Copyright (c) Sparky Bobo Designs. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 */
'use strict';

const { contextBridge, ipcRenderer } = require('electron');

/*
Navigation
*/
contextBridge.exposeInMainWorld(
    'navigationApi',
    {
        setActiveSectionButtonId: (sectionButtonId) => { ipcRenderer.send('setActiveSectionButtonId', sectionButtonId); },
        getActiveSectionButtonId: () => { ipcRenderer.send('getActiveSectionButtonId'); },
        onActiveSectionButtonId: (callback) => { ipcRenderer.on('activeSectionButtonId', (_event, sectionButtonId) => callback(sectionButtonId)); },
    }
);

/*
Configure
*/
contextBridge.exposeInMainWorld(
    'configureApi',
    {
        getAllBoards: () => { ipcRenderer.send('getAllBoards'); },
        refreshAllBoards: () => { ipcRenderer.send('refreshAllBoards'); },
        onAllBoardsError: (callback) => { ipcRenderer.on('allBoardsError', (_event, error) => callback(error)); },
        onAllBoardsList: (callback) => { ipcRenderer.on('allBoardsList', (_event, boards) => callback(boards)); },
        onBoard: (callback) => { ipcRenderer.on('board', (_event, board) => callback(board)); },
    });

/*
Demo
*/
contextBridge.exposeInMainWorld(
    'demoApi',
    {
        getDemoBoards: () => { ipcRenderer.send('getDemoBoards'); },
        onBoardTx: (callback) => { ipcRenderer.on('boardTx', (_event, board) => callback(board)); },
        onBoardRx: (callback) => { ipcRenderer.on('boardRx', (_event, board) => callback(board)); },
        onBoardFs: (callback) => { ipcRenderer.on('boardFs', (_event, board) => callback(board)); },
        setTxStatus: (cstate, vstate) => { ipcRenderer.send('setTxStatus', cstate, vstate); },
        setRxStatus: (cstate, vstate) => { ipcRenderer.send('setRxStatus', cstate, vstate); },
        setFsStatus: (cstate, vstate) => { ipcRenderer.send('setFsStatus', cstate, vstate); },
        onTxStatus: (callback) => { ipcRenderer.on('txBoardStatus', (_event, status) =>  callback(status)); },
        onRxStatus: (callback) => { ipcRenderer.on('rxBoardStatus', (_event, status) =>  callback(status)); },
        onFsStatus: (callback) => { ipcRenderer.on('fsBoardStatus', (_event, status) =>  callback(status)); },
        clockSlow: () => { ipcRenderer.send('clockSlow'); console.log('slow ipc'); },
        clockFast: () => { ipcRenderer.send('clockFast'); },
        clockStep: () => { ipcRenderer.send('clockStep'); },
        scrambleEnable: () => { ipcRenderer.send('scrambleEnable'); },
        scrambleToggle: () => { ipcRenderer.send('scrambleToggle'); },
        scrambleClear: () => { ipcRenderer.send('scrambleClear'); },
    });
