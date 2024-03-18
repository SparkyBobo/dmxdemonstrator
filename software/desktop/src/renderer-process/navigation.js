/**
 * @file Navigation routines.
 * @copyright Copyright (c) 2016-2018 GitHub Inc.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 * @see https://github.com/electron/electron-api-demos/blob/master/assets/nav.js
 */
'use strict';

// Initialize
document.addEventListener('readystatechange', (event) => {
    if (document.readyState == 'complete') {

        // Add a button listener for handling navigation.
        document.body.addEventListener('click', (event) => {
            if (event.target.dataset.section) {
                handleSectionTrigger(event);
            }
        });

        // Pick up where we left off
        window.navigationApi.getActiveSectionButtonId();
    }
});

// Default to the view that was active the last time the app was open.
window.navigationApi.onActiveSectionButtonId((sectionButtonId) => {
    if (sectionButtonId) {
        const sectionButton = document.getElementById(sectionButtonId);
        if (sectionButton) {
            sectionButton.click();
        } else {
            activateDefaultSection();
        }
    } else {
        activateDefaultSection();
    }
});

/**
 * Hide all content sections and deselect the navigation buttons.
 */
function hideAllSections() {
    const sections = document.querySelectorAll('.section.is-shown');
    Array.prototype.forEach.call(sections, (section) => {
        section.classList.remove('is-shown');
    });
};

/**
 * Navigate to a new section.
 */
function handleSectionTrigger(event) {
    hideAllSections();

    // Display the current section
    const sectionId = `${event.target.dataset.section}-section`;
    var section = document.getElementById(sectionId);
    section.classList.add('is-shown');

    // Save currently active button in localStorage
    const buttonId = event.target.getAttribute('id');
    window.navigationApi.setActiveSectionButtonId(buttonId);
};

/**
 * Activate the default selection.
 */
function activateDefaultSection() {
    document.getElementById('id-tab-getting-started').click();
};
