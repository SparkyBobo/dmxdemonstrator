/**
 * @file Navigation routines.
 * @copyright Copyright (c) 2016-2018 GitHub Inc.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 * @see https://github.com/electron/electron-api-demos/blob/master/assets/nav.js
 */
'use strict';

const settings = require('electron-settings');

/**
 * Hide all content sections and deselect the navigation buttons.
 */
function hideAllSections() {
    const sections = document.querySelectorAll('.section.is-shown')
    Array.prototype.forEach.call(sections, (section) => {
        section.classList.remove('is-shown');
    })
};

/**
 * Navigate to a new section.
 */
function handleSectionTrigger(event) {
    hideAllSections();

    // Display the current section
    const sectionId = `${event.target.dataset.section}-section`;
    document.getElementById(sectionId).classList.add('is-shown');

    // Save currently active button in localStorage
    const buttonId = event.target.getAttribute('id');
    settings.set('activeSectionButtonId', buttonId);
};

/**
 * Add a button listener for handling navigation.
 */
document.body.addEventListener('click', (event) => {
    if (event.target.dataset.section) {
        handleSectionTrigger(event);
    }
});

/**
 * Activate the default selection.
 */
function activateDefaultSection() {
    document.getElementById('id-tab-getting-started').click();
};

/**
 * Load all the templates into the DOM.
 */
const links = document.querySelectorAll('link[rel="import"]')

// Import and add each page to the DOM
Array.prototype.forEach.call(links, (link) => {
    let template = link.import.querySelector('.task-template');
    if (template) {
        let clone = document.importNode(template.content, true);
        document.querySelector('.content').appendChild(clone);
    }
});

/**
 * Default to the view that was active the last time the app was open.
 */
settings.get('activeSectionButtonId').then(function (sectionId) {
    if (sectionId) {
        const section = document.getElementById(sectionId);
        if (section) {
            section.click();
        } else {
            activateDefaultSection();
        }
    } else {
        activateDefaultSection();
    }
});
