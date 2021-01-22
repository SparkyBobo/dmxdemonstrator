/**
 * @file Menu templates
 * @author Sparky Bobo
 * @copyright Crazy Giraffe Software. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 */
'use strict';

const path = require('path');
const {
    app,
    Menu,
    shell
} = require('electron');
const {
    is,
    appMenu,
    aboutMenuItem,
    openUrlMenuItem,
    openNewGitHubIssue,
    debugInfo
} = require('electron-util');
const config = require('./config');

// Add a helpmenu for links to github
const helpSubmenu = [
    openUrlMenuItem({
        label: 'Website',
        url: 'https://github.com/crazy-giraffe-software/dmxdemonstrator'
    }),
    openUrlMenuItem({
        label: 'Source Code',
        url: 'https://github.com/crazy-giraffe-software/dmxdemonstrator/tree/master/software/desktop'
    }),
    {
        label: 'Report an Issue…',
        click() {
            const body = `
<!-- Please succinctly describe your issue and steps to reproduce it. -->


---

${debugInfo()}`;

            openNewGitHubIssue({
                user: 'crazy-giraffe-software',
                repo: 'dmxdemonstrator',
                labels: ['demo-software', ],
                assignee: 'SparkyBobo',
                body
            });
        }
    }
];

// Add About to the help sub-menu except on Mac OS
if (!is.macos) {
    helpSubmenu.push({
            type: 'separator'
        },
        aboutMenuItem({
            icon: path.join(__dirname, 'assets', 'icon.png'),
            text: 'Created by Crazy Giraffe Software'
        })
    );
}

// Add a debug menu for easy development
const debugSubmenu = [{
        label: 'Show Settings',
        click() {
            config.openInEditor();
        }
    },
    {
        label: 'Show App Data',
        click() {
            shell.openItem(app.getPath('userData'));
        }
    },
    {
        type: 'separator'
    },
    {
        label: 'Delete Settings',
        click() {
            config.clear();
            app.relaunch();
            app.quit();
        }
    },
    {
        label: 'Delete App Data',
        click() {
            shell.moveItemToTrash(app.getPath('userData'));
            app.relaunch();
            app.quit();
        }
    }
];

// Create main menu for Mac OS
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
                label: 'Custom'
            },
            {
                type: 'separator'
            },
            {
                role: 'close'
            }
        ]
    },
    {
        role: 'editMenu'
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

// Create main menu for Linux and Windows
const otherTemplate = [{
        role: 'fileMenu',
        submenu: [{
                label: 'Custom'
            },
            {
                type: 'separator'
            },
            {
                label: 'Settings',
                accelerator: 'Control+,',
                click() {
                    showPreferences();
                }
            },
            {
                type: 'separator'
            },
            {
                role: 'quit'
            }
        ]
    },
    {
        role: 'editMenu'
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

if (is.development) {
    template.push({
        label: 'Debug',
        submenu: debugSubmenu
    });
}

// Build and export the menu.
module.exports = Menu.buildFromTemplate(template);
