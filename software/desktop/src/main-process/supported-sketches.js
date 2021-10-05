 /**
 * @file Supported sketch definitions.
 * @copyright Copyright (c) Crazy Giraffe Software. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
  */
 'use strict';

 let sketches = [{
        name: 'Transmitter',
        file: 'Transmitter.ino',
        sketchId: 'Transmitter',
        isTx: true,
        isRx: false,
    },
    {
        name: 'Receiver',
        file: 'Receiver.ino',
        sketchId: 'Receiver',
        isRx: true,
        isTx: false,
    },
    {
        name: 'Discovery',
        file: 'Discovery.ino',
        sketchId: 'Discovery',
        isTx: false,
        isRx: false,
    }
 ];

 /**
  * Generate an object with sketch id keys for faster lookup.
  * @return {object} byId.
  */
 function sketchLookupTable() {
     var byId = {};
     for (var i = 0; i < sketches.length; i++) {
         var currentSketch = sketches[i];
         var currentId = currentSketch.sketchId;
         byId[currentId] = currentSketch;
     }
     return byId;
 }

 module.exports = sketchLookupTable();
