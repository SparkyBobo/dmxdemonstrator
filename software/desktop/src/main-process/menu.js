/**
 * @file Menu templates
 * @copyright Copyright (c) Sparky Bobo Designs. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 */
'use strict';

const path = require('path');
const { app, Menu, shell } = require('electron');
const { is, appMenu, aboutMenuItem, openUrlMenuItem, openNewGitHubIssue, debugInfo } = require('electron-util');

// Add a helpmenu for links to github
const helpSubmenu = [
    openUrlMenuItem({
        label: 'Website',
        url: 'https://github.com/SparkyBobo/dmxdemonstrator'
    }),
    openUrlMenuItem({
        label: 'Source Code',
        url: 'https://github.com/SparkyBobo/dmxdemonstrator/tree/master/software/desktop'
    }),
    {
        label: 'Report an Issue…',
        click() {
            const body = `
<!-- Please succinctly describe your issue and steps to reproduce it. -->


---

${debugInfo()}`;

            openNewGitHubIssue({
                user: '',
                repo: 'dmxdemonstrator',
                labels: ['demo-software', ],
                assignee: 'SparkyBobo',
                body
            });
        }
    }
];

// Add About to the help sub-menu except on Mac OS.
if (!is.macos) {
    helpSubmenu.push({
            type: 'separator'
        },
        aboutMenuItem({
            icon: path.join(__dirname, 'assets', 'icon.png'),
            text: 'Created by Sparky Bobo'
        })
    );
}

// Create main menu for Mac OS.
const macosTemplate = [
    appMenu([{
        label: 'Preferences…',
        accelerator: 'Command+,',
        click() {
            showPreferences();
        }
    }]),
    {
        role: 'fileMenu',
        submenu: [{
                role: 'close'
            }
        ]
    },
    {
        role: 'viewMenu'
    },
    {
        role: 'windowMenu'
    },
    {
        role: 'help',
        submenu: helpSubmenu
    }
];

// Create main menu for Linux and Windows.
const otherTemplate = [{
        role: 'fileMenu',
        submenu: [{
                role: 'quit'
            }
        ]
    },
    {
        role: 'viewMenu'
    },
    {
        role: 'help',
        submenu: helpSubmenu
    }
];


// Pick the correct main menu and add debug is running in development.
const template = process.platform === 'darwin' ? macosTemplate : otherTemplate;

// Build and export the menu.
module.exports = Menu.buildFromTemplate(template);
