 /**
  * @file Board definitions.
  * @copyright Copyright (c) 2016 Suz Hinton.
  * @license Licensed under the MIT License. See License.txt in the project root for license information.
  * @see https://github.com/noopkat/avrgirl-arduino/blob/master/boards.js
  */
 'use strict';

 var boards = [{
         name: 'uno',
         productId: ['0x0043', '0x7523', '0x0001', '0xea60', '0x6015'],
         productPage: 'https://store.arduino.cc/arduino-uno-rev3',
     },
     {
         name: 'leonardo',
         productId: ['0x0036', '0x8036', '0x800c'],
         productPage: 'https://store.arduino.cc/leonardo',
     }
 ];

 /**
  * Generate an object with board pid keys for faster lookup
  * @return {object} byPid
  */
 function boardLookupTable() {
     var byPid = {};
     for (var i = 0; i < boards.length; i++) {
         var currentBoard = boards[i];
         var productIds = currentBoard.productId;
         if (Array.isArray(productIds)) {
             for (var j = 0; j < productIds.length; j++) {
                 var currentPid = parseInt(productIds[j], 16);
                 byPid[currentPid] = currentBoard;
             }
         }
     }
     return byPid;
 }

 module.exports = boardLookupTable();
