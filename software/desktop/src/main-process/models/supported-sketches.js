 /**
 * @file Supported sketch definitions.
 * @copyright Copyright (c) Sparky Bobo Designs. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
  */
 'use strict';

 let sketches = [
    {
        name: 'Discovery',
        file: 'Discovery.ino',
        sketchId: 'Discovery',
        boardType: 0,
    },
    {
        name: 'Transmitter',
        file: 'Transmitter.ino',
        sketchId: 'Transmitter',
        boardType: 1,
    },
    {
        name: 'Receiver',
        file: 'Receiver.ino',
        sketchId: 'Receiver',
        isRx: true,
        boardType: 2,
    },
    {
        name: 'Frame Scrambler',
        file: 'Scrambler.ino',
        sketchId: 'Frame-Scrambler',
        boardType: 3,
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
