 /**
 * @file Supported shield definitions.
 * @copyright Copyright (c) Crazy Giraffe Software. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
  */
 'use strict';

 var shields = [{
        name: 'DMX-TX1',
        image: '.\\assets\\img\\shield-tx1.png',
        shieldId: 'DMX-TX1'
    },
    {
        name: 'DMX-TX2',
        image: '.\\assets\\img\\shield-tx2.png',
        shieldId: 'DMX-TX2'
    },
    {
        name: 'DMX-RX1',
        image: '.\\assets\\img\\shield-rx1.png',
        shieldId: 'DMX-RX1'
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
