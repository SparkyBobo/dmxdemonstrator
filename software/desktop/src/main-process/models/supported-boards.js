 /**
 * @file Supported board definitions.
 * @copyright Copyright (c) Sparky Bobo Designs. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
  */
 'use strict';

 let boards = [{
        name: 'Arduino Uno',
        image: '.\\assets\\img\\board-arduino.png',
        productIds: ['0x0043', '0x7523', '0x0001', '0xea60', '0x6015'],
        boardOption: 'uno',
        discoverySketch: null //'discovery.ino.hex.uno'
    },
    {
        name: 'Arduino Leonardo',
        image: '.\\assets\\img\\board-arduino.png',
        productIds: ['0x0036', '0x8036', '0x800c'],
        boardOption: 'leonardo',
        discoverySketch: null //'discovery.ino.hex.leonardo'
    }
 ];

 /**
  * Generate an object with board pid keys for faster lookup.
  * @return {object} byPid.
  */
 function boardLookupTable() {
    let byPid = {};
    for (let i = 0; i < boards.length; i++) {
        let currentBoard = boards[i];
        let productIds = currentBoard.productIds;
        if (Array.isArray(productIds)) {
            for (let j = 0; j < productIds.length; j++) {
                let currentPid = parseInt(productIds[j], 16);
                byPid[currentPid] = currentBoard;
            }
        }
    }
    return byPid;
 }

 module.exports = boardLookupTable();
