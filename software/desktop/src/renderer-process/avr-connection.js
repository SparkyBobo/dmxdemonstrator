/**
 * @file AVR Connections.
 * @copyright Copyright (c) Crazy Giraffe Software. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 */
'use strict';

var avrgirl = require('avrgirl-arduino');
var boards = require('./boards');

var AvrConnection = function () {};

/**
 * Return a list of devices on serial ports. In addition to the output provided
 * by SerialPort.list, it adds a platform independent PID in _pid
 *
 * @param {function} callback - function to run upon completion/error
 */
AvrConnection.prototype.list = AvrConnection.list = function (callback) {
    avrgirl.prototype.listPorts(function (error, ports) {
        if (error) return callback(error);

        // filter for a match by product id
        var validPorts = ports.filter(function (p) {
            var currentPid = parseInt(p._standardPid, 16);
            return boards[currentPid];
        });

        // convert to a friendly list
        var validBoards = validPorts.map(function (p) {
            var currentPid = parseInt(p._standardPid, 16);
            return {
                path: p.path,
                manufacturer: p.manufacturer,
                productId: p._standardPid,
                vendorId: p.vendorId,
                name: boards[currentPid].name,
                productPage: boards[currentPid].productPage
            };
        });

        return callback(null, validBoards);
    });
};

module.exports = AvrConnection;
