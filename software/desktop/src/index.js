/**
 * @file Main Application Entry Point.
 * @copyright Copyright (c) Crazy Giraffe Software. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 */
'use strict';

/**
 * @file Main Application.
 * @copyright Copyright (c) Crazy Giraffe Software. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 */
'use strict';

const {app, BrowserWindow, Menu} = require('electron');
const {is, centerWindow, enforceMacOSAppLocation, isFirstAppLaunch, setContentSecurityPolicy} = require('electron-util');
const path = require('path');
const {autoUpdater} = require('electron-updater');
const windowStateKeeper = require('electron-window-state');
const unhandled = require('electron-unhandled');
const debug = require('electron-debug');
const contextMenu = require('electron-context-menu');
const config = require('./main-process/config');
const menu = require('./main-process/menu');
require('./main-process/boards');

// Enable the unhandled exception handler, debug options, and context menus.
unhandled();
debug();
contextMenu();

// Note: Must match `build.appId` in package.json
app.setAppUserModelId('net.crazygiraffesoftware.dmx-demonstrator');

// Uncomment this before publishing your first version.
// It's commented out as it throws an error if there are no published versions.
// if (!is.development) {
// 	const FOUR_HOURS = 1000 * 60 * 60 * 4;
// 	setInterval(() => {
// 		autoUpdater.checkForUpdates();
// 	}, FOUR_HOURS);
//
// 	autoUpdater.checkForUpdates();
// }

// Prevent window from being garbage collected
let mainWindow;

// Create the main window.
const createMainWindow = async () => {

    // Load the previous state with fallback to defaults
    let mainWindowState = windowStateKeeper({
        defaultWidth: 800,
        defaultHeight: 640
    });

    // Launch the main window
	const win = new BrowserWindow({
		title: app.name,
        show: false,
        'x': mainWindowState.x,
        'y': mainWindowState.y,
        'width': mainWindowState.width,
        'height': mainWindowState.height,
        webPreferences: {
            nodeIntegration: true
        }
	});

	win.on('ready-to-show', () => {
        enforceMacOSAppLocation();
		win.show();
	});

	win.on('closed', () => {
		mainWindow = undefined;
    });

    // Let us register listeners on the window, so we can update the state
    // automatically (the listeners will be removed when the window is closed)
    // and restore the maximized or full screen state
    mainWindowState.manage(win);

    // Load content and return
    await win.loadFile(path.join(__dirname, 'index.html'));
	return win;
};

// Prevent multiple instances of the app
if (!app.requestSingleInstanceLock()) {
	app.quit();
}

// Disallow second instances.
app.on('second-instance', () => {
	if (mainWindow) {
		if (mainWindow.isMinimized()) {
			mainWindow.restore();
		}

		mainWindow.show();
	}
});

// Quit when all windows are closed except Mac OS
app.on('window-all-closed', () => {
	if (!is.macos) {
		app.quit();
	}
});

// Create the main window upon app activation.
app.on('activate', async () => {
	if (!mainWindow) {
		mainWindow = await createMainWindow();
	}
});

// Run the app.
(async () => {
    await app.whenReady();

	Menu.setApplicationMenu(menu);
	mainWindow = await createMainWindow();

	//const favoriteAnimal = config.get('favoriteAnimal');
	//mainWindow.webContents.executeJavaScript(`document.getElementById('ports').textContent = 'Your favorite animal is ${favoriteAnimal}'`);
})();