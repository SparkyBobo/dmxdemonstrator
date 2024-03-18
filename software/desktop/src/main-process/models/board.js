/**
 * @file Bourd object.
 * @copyright Copyright (c) Sparky Bobo Designs. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 */
'use strict';

const { SerialPort, ReadlineParser } = require('serialport');
const shields = require('./supported-shields.js');
const sketches = require('./supported-sketches.js');

const portOptions = {
    baudRate: 115200,
    dataBits: 8,
    stopBits: 1,
    parity: 'none',
};

var Board = function(path, manufacturer, productId, vendorId, serialNumber) {
    this.path = path;
    this.manufacturer = manufacturer;
    this.productId = productId;
    this.vendorId = vendorId;
    this.serialNumber = serialNumber;
    this.boardName;
    this.boardImage;
    this.boardOption;
    this.discoverySketch;
    this.shieldName;
    this.shieldImage;
    this.shieldProgress;
    this.sketchName;
    this.sketchFile;
    this.sketchVersion;
    this.boardType;
    this.sketchProgress;
    this.sketchStatus;
    this.sketchNeedsUpdate;
    this.sketchNeedsLoad;
    this.compactStatus;
    this.verboseStatus;
    this.desiredVerboseStatus = false;
    this.dataCallback;

    // Setup and open serial port
    this.parser = new ReadlineParser({
        delimiter: '\r\n'
    });

    this.serialport =  new SerialPort({
        path: this.path,
        baudRate: portOptions.baudRate,
        dataBits: portOptions.dataBits,
        stopBits: portOptions.stopBits,
        parity: portOptions.parity,
        autoOpen: false,
    });

    this.serialport.pipe(this.parser);

    // Handle disonnect
    var _this = this;
    this.serialport.on('close', () => {
        console.log("Detected close: ", _this.path);
        _this.serialport = null;
    });

    // Setup parser
    this.parser.on('data', (line) => {

        // Some boards (Uno) reset when you connect to them
        // so re-request the info.
        if (line.includes("ready!")) {
            _this.serialport.write('i');
        }

        // Some versions of software toggle compact with 'm'
        if (line.includes("Compact Status: On")) {
            _this.compactStatus = true;
        }

        // Some versions of software toggle compact with 'm'
        if (line.includes("Compact Status: Off")) {
            _this.compactStatus = false;

            // Delay the toggle to make sure we don't toggle it in the case
            // we're reading an older stream.
            clearTimeout(_this.setCompactTimeoutId);
            _this.setCompactTimeoutId = setTimeout(() => {
                if (!_this.compactStatus) {
                    _this.serialport.write('m');
                }
            }, 1000);
        }

        // Look for verbose and compact status
        if (!line.startsWith('m,')) {
            console.log(`Received ${line.length} bytes of data from ${_this.path}: ${line}`);

            // Callback
            if (_this.dataCallback) {
                _this.dataCallback(
                {
                    line: line,
                });
            }
        } else {
            const lineParts = line.split(",");
            console.log(`Received compact status ${line.length} bytes and ${lineParts.length} from ${_this.path}: ${line}`);
            const isTx = lineParts[1].startsWith('tx');
            const isRx = lineParts[1].startsWith('rx');
            const isFs = lineParts[1].startsWith('fs');

            // Setup verbose.
            _this.compactStatus = true;
            _this.verboseStatus = Number(lineParts[2]) > 0;
            if (_this.desiredVerboseStatus && !_this.verboseStatus) {
                _this.serialport.write('v');
            }

            // Callback
            if (_this.dataCallback) {
                _this.dataCallback(
                {
                    boardTypeId: lineParts[1],
                    currentFrameStep: Number(lineParts[3]),
                    clockBit: Number(lineParts[4]),
                    dataBit: Number(lineParts[5]),
                    dimmerLevels: [ Number(lineParts[6]), Number(lineParts[7]), Number(lineParts[8]), Number(lineParts[9]), ],
                    currentClockMode: isTx ? Number(lineParts[10]): undefined,
                    frameState: isRx ? Number(lineParts[10]): undefined,
                    clockValue: isTx ? Number(lineParts[11]): undefined,
                    nextFrameState: isRx ? Number(lineParts[11]): undefined,
                    currentSelectedDimmer: isTx ? Number(lineParts[12]): undefined,
                    startCodeMatch: isRx ? Number(lineParts[12]): undefined,
                    currentDimmerLevel: isTx ? Number(lineParts[13]): undefined,
                    receivedStartCode: isRx ? Number(lineParts[13]): undefined,
                    expectedStartCode: isRx ? Number(lineParts[14]): undefined,
                    breakCounter: isRx ? Number(lineParts[15]): undefined,
                });
            }
        }
    });
};

/**
 * Get a display-frielndly json representation to sending
 * to the UI layer.
 */
Board.prototype.getDisplayInfo = function() {
    var _this = this;

    return {
        path: _this.path,
        manufacturer: _this.manufacturer,
        productId: _this.productId,
        vendorId: _this.vendorId,
        serialNumber: _this.serialNumber,
        boardName: _this.boardName,
        boardImage: _this.boardImage,
        boardOption: _this.boardOption,
        discoverySketch: _this.discoverySketch,
        shieldName: _this.shieldName,
        shieldImage: _this.shieldImage,
        shieldProgress: _this.shieldProgress,
        sketchName: _this.sketchName,
        sketchFile: _this.sketchFile,
        sketchVersion: _this.sketchVersion,
        boardType: _this.boardType,
        sketchProgress: _this.sketchProgress,
        sketchStatus: _this.sketchStatus,
        sketchNeedsUpdate: _this.sketchNeedsUpdate,
        sketchNeedsLoad: _this.sketchNeedsLoad,
    };
}

/**
 * Cleanup the port.
 */
Board.prototype.closePort = function() {
    var _this = this;

    _this.parser.removeAllListeners('data');

    return new Promise((resolve, reject) => {
        if (_this.serialport) {
            console.log("Sending 'q': ", _this.path);
            _this.serialport.write('q', (error) => {
                if (error) {
                    console.log("Error sending 'q': ", _this.path);
                }

                console.log("Close port: ", _this.path);
                _this.serialport.close((error) => {
                    if (error) {
                        console.log("Error closing port: ", _this.path);
                    }

                    console.log("Closed: ", _this.path);
                    _this.serialport = null;
                    resolve();
                });
            });
        } else {
            console.log("Closing already-closed port: ", _this.path)
            resolve();
        }
    });
}

/**
 * Discover the sketch and shield info.
 */
Board.prototype.discoverShieldAndSketch = function(callback) {
    var _this = this;

    if (!_this.serialport.isOpen) {

        // Parse the info response looking for sketch and shield info.
        var discoveryParse = function(line) {
            console.log(`Discovering ${line.length} bytes of data from ${_this.serialport.path}: ${line}`);

            let lineParts = line.split(" ");
            if (lineParts.length >= 4) {
                if (lineParts[0] == "DMX" && lineParts[1] == "Demonstrator" && lineParts[3] == "Version") {
                    let sketchId = lineParts[2];
                    let discoveredSketch = sketches[sketchId];
                    console.log(`Found ${sketchId}:${JSON.stringify(discoveredSketch)}`);
                    if (discoveredSketch) {
                        _this.sketchName = discoveredSketch.name;
                        _this.sketchFile = discoveredSketch.file;
                        _this.sketchVersion = lineParts[4];
                        _this.boardType = discoveredSketch.boardType;
                        if (callback) callback(null);
                    }
                }

                if (lineParts[0] == "Hardware" && lineParts[1] == "Detection:") {
                    let shieldId = lineParts[3];
                    let discoveredShield = shields[shieldId];
                    console.log(`Found ${shieldId}:${JSON.stringify(discoveredShield)}`);
                    if (discoveredShield) {
                        _this.shieldName = discoveredShield.name;
                        _this.shieldImage = discoveredShield.image;
                        _this.shieldProgress = null;
                        if (callback) callback(null);
                    }
                }

                if (_this.sketchName && _this.shieldName) {
                    _this.parser.removeListener('data', discoveryParse);
                }
            }
        }

        // Add listener and clear it if we had one.
        _this.parser.removeListener('data', discoveryParse);
        _this.parser.addListener('data', discoveryParse);
        console.log("Discovering on port ", _this.path);
        _this.serialport.write('i');

        // Cleanup the post after delay if not listening for status.
        let cleanupTimeoutId = setTimeout(() => {
            _this.parser.removeListener('data', discoveryParse);
        }, 5000);

        // Open port
        console.log("Open port: ", this.path);
        _this.serialport.open((error) => {
            console.log("Opened: ", this.path, "; ", error);
            _this.serialport.write('i');
            if (error) {
                callback(error);
            }
        });
    }
}

/**
 * Listen to the board.
 *
 * @param {*} callback
 */
Board.prototype.startListening = function(verbose, callback) {
    var _this = this;

    // Callback
    _this.dataCallback = callback;
    _this.desiredVerboseStatus = verbose;
}

/**
 * Don't listen to the board.
 *
 * @param {*} callback
 */
Board.prototype.stopListening = function() {
    var _this = this;

    // Callback
    _this.dataCallback = null;
    _this.desiredVerboseStatus = false;
}

/**
 * Clock slow.
 *
 */
Board.prototype.clockSlow = function() {
    var _this = this;
    console.log('slow');
    if (_this.boardType == 1) {
        _this.serialport.write('s');
    }
}

/**
 * Clock fast.
 *
 */
Board.prototype.clockFast = function() {
    var _this = this;

    if (_this.boardType == 1) {
        _this.serialport.write('f');
    }
}

/**
 * Clock step.
 *
 */
Board.prototype.clockStep = function() {
    var _this = this;

    if (_this.boardType == 1) {
        _this.serialport.write('n');
    }
}

/**
 * Scramble enable.
 *
 */
Board.prototype.scrambleEnable = function() {
    var _this = this;

    if (_this.boardType == 3) {
        _this.serialport.write('e');
    }
}

/**
 * Scramble toggle.
 *
 */
Board.prototype.scrambleToggle = function() {
    var _this = this;

    if (_this.boardType == 3) {
        _this.serialport.write('s');
    }
}

/**
 * Scramble clear.
 *
 */
Board.prototype.scrambleClear = function() {
    var _this = this;

    if (_this.boardType == 3) {
        _this.serialport.write('c');
    }
}

module.exports = Board;
