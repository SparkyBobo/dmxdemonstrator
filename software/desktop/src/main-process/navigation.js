/**
 * @file Navigation routines
 * @copyright Copyright (c) Sparky Bobo Designs. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 */
'use strict';

const settings = require('electron-settings');
const ipcHandler = require('./ipcHandler');

// Set and return the active section button id.
ipcHandler.navigationApi.onSetActiveSectionButtonId((sectionButtonId) => {
    settings.set('activeSectionButtonId', sectionButtonId);
});

ipcHandler.navigationApi.onGetActiveSectionButtonId(() => {
    ipcHandler.navigationApi.sendActiveSectionButtonId(settings.get('activeSectionButtonId'));
});
