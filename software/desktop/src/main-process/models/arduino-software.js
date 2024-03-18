
/**
 * @file Bourd object.
 * @copyright Copyright (c) Sparky Bobo Designs. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 */
'use strict';

const path = require('path');
const { is } = require('electron-util');
const { exec, spawn } = require('child_process');

var ArduinoSoftware = function() {
    this.pathToApp;
};

/**
 * Determine if the Arduino software is installed and where.
 */
ArduinoSoftware.prototype.isInstalled = function(callback) {
    var _this = this;

    // Windows
    if (is.windows || is.windowsStore) {

        // In %PATH%: where "Arduino IDE.exe"
        // AllUsers: C:\Program Files\Arduino IDE\Arduino IDE.exe =>  %ProgramFiles%\Arduino IDE\Arduino IDE.exe
        // Only Me: C:\Users\%USERNAME%\AppData\Local\Programs\Arduino IDE\Arduino IDE.exe => %USERPROFILE%\AppData\Local\Programs\Arduino IDE\Arduino IDE.exe
        return getScriptResult('where "Arduino IDE.exe"', (p) => {
            if (p) {
                _this.pathToApp = p;
                callback(true);
                return;
            }

            return getScriptResult('dir /s /b "' + path.join('%ProgramFiles%', 'Arduino IDE', 'Arduino IDE.exe') + '"', (p) => {
                if (p) {
                    _this.pathToApp = p;
                    callback(true);
                    return;
                };

                return getScriptResult('dir /s /b "' + path.join('%USERPROFILE%', 'AppData', 'Local', 'Programs', 'Arduino IDE', 'Arduino IDE.exe') + '"', (p) => {
                    if (p) {
                        _this.pathToApp = p;
                        callback(true);
                        return;
                    };

                    callback(false);
                    return;
                });
            });
        });

    // Mac
    } else if (is.macos || is.macAppStore) {

    // Linux
    } else if (is.linux) {

    }
};

/**
 * Compile and upload a sketch.
 */
ArduinoSoftware.prototype.compileAndUpload = function(portname, boardSpec, sketchIno, callback) {
    var _this = this;

    // arduino [--verify|--upload] [--board package:arch:board[:parameters]] [--port portname] [--pref name=value] [-v|--verbose] [--preserve-temp-files] [FILE.ino]
    if (_this.pathToApp) {
        var args = "";
        args.concat(' --upload --port ' + portname + ' --board ' + boardSpec + ' ' + sketchIno);
        return executeScript(_this.pathToApp, args, () => {

        });
    } else {
        callback();
    }
};

/**
 * Run a script and get the result.
 * @param {*} script the script to run
 * @param {*} callback the callback
 * @returns the output of the script
 */
function getScriptResult(script, callback) {

    var whereScript = exec(script, (error, stdout, stderr) => {
        callback(stdout);
        //console.log("out: ", stdout);
        if (error !== null) {
        }
    });
}

/**
 * Run a script  and stream the results.
 * @param {*} command The command to run.
 * @param {*} args The arguments to pass.
 * @param {*} callback The callback to get the results.
 */
function executeScript(command, args, callback) {
    console.log("Starting Process.");
    var child = child_process.spawn(command, args);

    var scriptOutput = "";

    child.stdout.setEncoding('utf8');
    child.stdout.on('data', function(data) {
        console.log('stdout: ' + data);

        data=data.toString();
        scriptOutput+=data;
    });

    child.stderr.setEncoding('utf8');
    child.stderr.on('data', function(data) {
        console.log('stderr: ' + data);

        data=data.toString();
        scriptOutput+=data;
    });

    child.on('close', function(code) {
        callback(scriptOutput,code);
    });
}

module.exports = ArduinoSoftware;
