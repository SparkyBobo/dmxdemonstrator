/**
 * @file Demo Tab.
 * @copyright Copyright (c) Crazy Giraffe Software. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 */
'use strict';

const ipc = require('electron').ipcRenderer

let currentTxBoard = null;
let currentRxBoard = null;

/* Request the boards on startup. */
ipc.send('demo-board-request');

/* Display the boards. */
ipc.on('demo-board-tx', function (event, board) {
    currentTxBoard = board;
});

ipc.on('demo-board-rx', function (event, board) {
    currentRxBoard = board;
});

/* Display the board's data responses. */
ipc.on('configure-board-tx-data', function (event, boards) {
});

ipc.on('configure-board-rx-data', function (event, boards) {
});

/* Transmitter controls */
document.querySelector('#id-demo-tx-dim-select').addEventListener('click', (event) => {
});

document.querySelector('#id-demo-tx-clk-mode').addEventListener('click', (event) => {
});

document.querySelector('#id-demo-tx-clk-step').addEventListener('click', (event) => {
});

document.querySelector('#id-demo-tx-dim-select').addEventListener('click', (event) => {
});

/**
 * Display the badge.
 *
 * @param {number} index - The UI section of the board (tx/rx).
 * @param {Object} info - The board/shield/sketch information.
 */
function displayTitleAndBadge(section, info) {

    let demoSection = document.querySelector(`#id-demo-${section}`);
    let sectionTitle = document.querySelector(`#id-demo-${section}-board`);
    if (info.shieldName) {
        sectionTitle.textContent = info.shieldName;
        demoSection.classList.remove('is-hidden');
    } else {
        demoSection.classList.add('is-hidden');
    }

    let sectionImage = document.querySelector(`#id-demo-${section}-board-img`);
    sectionImage.src = info.shieldImage;

    //let sectionStep = document.querySelector(`#id-demo-${section}-step`);
}


/**
 * Display the dimmer levels.
 *
 * @param {number} index - The UI section of the board (tx/rx).
 * @param {Object} info - The dimmer levels.
 */
function displayDimmers(section, levels) {
    let dimmer0 = document.querySelector(`#id-demo-${section}-dim-0`);
    dimmer0.value = levels[0];

    let dimmer1 = document.querySelector(`#id-demo-${section}-dim-1`);
    dimmer1.value = levels[1];

    let dimmer2 = document.querySelector(`#id-demo-${section}-dim-2`);
    dimmer2.value = levels[2];

    let dimmer3 = document.querySelector(`#id-demo-${section}-dim-3`);
    dimmer3.value = levels[3];
}

let levels =  [ 64, 128, 192, 255 ];
displayDimmers("tx", levels);
displayDimmers("rx", levels);