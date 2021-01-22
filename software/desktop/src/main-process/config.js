/**
 * @file Configuration.
 * @copyright Copyright (c) Crazy Giraffe Software. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 */
'use strict';

const Store = require('electron-store');

module.exports = new Store({
    defaults: {
        favoriteAnimal: '🦄'
    }
});
