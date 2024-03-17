 /**
 * @file Supported shield definitions.
 * @copyright Copyright (c) Sparky Bobo Designs. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
  */
 'use strict';

 var shields = [{
        name: 'DMX-TX1',
        image: '.\\assets\\svg\\board-tx1.svg',
        shieldId: 'DMX-TX1'
    },
    {
        name: 'DMX-TX2',
        image: '.\\assets\\svg\\board-tx2.svg',
        shieldId: 'DMX-TX2'
    },
    {
        name: 'DMX-RX1',
        image: '.\\assets\\svg\\board-rx1.svg',
        shieldId: 'DMX-RX1'
    },
    {
        name: 'DMX-FS1',
        image: '.\\assets\\svg\\board-fs1.svg',
        shieldId: 'DMX-FS1'
    }
 ];

 /**
  * Generate an object with shield id keys for faster lookup.
  * @return {object} byId.
  */
 function shieldLookupTable() {
     var byId = {};
     for (var i = 0; i < shields.length; i++) {
         var currentShield = shields[i];
         var currentId = currentShield.shieldId;
         byId[currentId] = currentShield;
     }
     return byId;
 }

 module.exports = shieldLookupTable();
