/**
 * @file Configure Tab.
 * @copyright Copyright (c) Sparky Bobo Designs. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 */
'use strict';

var currentBoards = null;
var currentTxBoardId = null;
var currentRxBoardId = null;

var maxIndex = 0;

// Initialize
document.addEventListener('readystatechange', (event) => {
    if (document.readyState == 'complete') {

        // Get boards.
        window.configureApi.getAllBoards();

        // Refresh buttons
        const refreshButtons = document.querySelectorAll('.configure-board-refresh-btn');
        refreshButtons.forEach(btn => {
            btn.addEventListener('click', (event) => {
                window.configureApi.refreshAllBoards();
            });
        });
    };
});

// Display the boards error message.
window.configureApi.onAllBoardsError((error) => {
    console.log(error);
    document.getElementById('id-configure-error-text').textContent = error.message;
    document.querySelector('.configure-get-started').classList.add('is-hidden');
    document.querySelector('.configure-boards').classList.add('is-hidden');
    document.querySelector('.configure-boards-refresh').classList.add('is-hidden');
    document.querySelector('.configure-error').classList.remove('is-hidden');
    document.querySelector('.configure-no-boards').classList.remove('is-hidden');
});

// Display the boards.
window.configureApi.onAllBoardsList((boards) => {
    currentBoards = boards;
    if (boards.length === 0) {
        document.querySelector('.configure-error').classList.add('is-hidden');
        document.querySelector('.configure-boards').classList.add('is-hidden');
        document.querySelector('.configure-boards-refresh').classList.add('is-hidden');
        document.querySelector('.configure-get-started').classList.remove('is-hidden');
        document.querySelector('.configure-no-boards').classList.remove('is-hidden');

    } else {
        document.querySelector('.configure-no-boards').classList.add('is-hidden');
        document.querySelector('.configure-boards-refresh').classList.remove('is-hidden');
        document.querySelector('.configure-boards').classList.remove('is-hidden');
        displayBoardList(boards);
    }
});

// Update a shield.
window.configureApi.onBoard((board) => {
    var index = getIndexFromPath(board.path);
    if (board?.sketchName) {
        displaySketch(index, board);
    }

    if (board?.shieldName) {
        displayShield(index, board);
    }
});


// Update tx board.
window.demoApi.onBoardTx((board) => {
    this.currentTxBoard = board;
    var index = getIndexFromPath(board?.path);
    displayBoard(index, board);
});

// Update rx board.
window.demoApi.onBoardRx((board) => {
    this.currentRxBoard = board;
    var index = getIndexFromPath(board?.path);
    displayBoard(index, board);
});

/**
 * Find a boards index from its path
 *
 * @param {string} path - The board path.
 */
function getIndexFromPath(path) {
    var index = -1;
    if (currentBoards && path) {
        index = currentBoards.findIndex((b) => {
            return b.path.trim() === path.trim();
        });
    }
    return index;
};

/**
 * Display the boards.
 *
 * @param {Object[]} boards - A collection of boards.
 */
function displayBoardList(boards) {

    // Remove existing boards.
    let boardContainer = document.querySelector('.configure-boards');
    while (boardContainer.firstChild) {
        boardContainer.removeChild(boardContainer.firstChild);
    };

    // Import the template for each board.
    let index = 0;
    Array.prototype.forEach.call(boards, (board) => {
        const clone = cloneBoardTemplate(index);
        boardContainer.appendChild(clone);
        displayBoard(index, board);
        displayShield(index, board);
        displaySketch(index, board);
        displayTitleAndBadge(index, board);
        index++;

        if (index > maxIndex) {
            maxIndex = index;
        }
    });
};

/**
 * Create a UI container for the board, sketch, and shield.
 *
 * @param {number} index - The UI index of the board (0-x).
 */
function cloneBoardTemplate(index) {

    if (index >= 0) {
        let boardTemplate = document.querySelector('.configure-template');
        let clone = boardTemplate.content.cloneNode(true);

        let boardCard = clone.querySelector('#id-configure-board-x');
        boardCard.id = `id-configure-board-${index}`

        let boardTitle = clone.querySelector('#id-configure-board-title-x');
        boardTitle.id = `id-configure-board-title-${index}`

        let boardBadge = clone.querySelector('#id-configure-board-badge-x');
        boardBadge.id = `id-configure-board-badge-${index}`

        let boardLabel = clone.querySelector('#id-configure-board-id-x');
        boardLabel.id = `id-configure-board-id-${index}`;

        let boardName = clone.querySelector('#id-configure-board-name-x');
        boardName.id = `id-configure-board-name-${index}`

        let boardImage = clone.querySelector('#id-configure-board-img-x');
        boardImage.id = `id-configure-board-img-${index}`

        let shieldName = clone.querySelector('#id-configure-board-shield-name-x');
        shieldName.id = `id-configure-board-shield-name-${index}`

        let shieldImage = clone.querySelector('#id-configure-board-shield-img-x');
        shieldImage.id = `id-configure-board-shield-img-${index}`
        shieldImage.classList.add('is-hidden');

        let shieldLoad = clone.querySelector('#id-configure-board-shield-load-x');
        shieldLoad.id = `id-configure-board-shield-load-${index}`
        shieldLoad.classList.add('is-hidden');

        let shieldProgress = clone.querySelector('#id-configure-board-shield-progress-x');
        shieldProgress.id = `id-configure-board-shield-progress-${index}`
        shieldProgress.classList.add('is-hidden');

        let shieldStatus = clone.querySelector('#id-configure-board-shield-status-x');
        shieldStatus.id = `id-configure-board-shield-status-${index}`
        shieldStatus.classList.add('is-hidden');

        let shieldDiscover = clone.querySelector('#id-configure-board-shield-discover-x');
        shieldDiscover.id = `id-configure-board-shield-discover-${index}`
        shieldDiscover.classList.remove('is-hidden');
        shieldDiscover.addEventListener('click', (event) => {
            //window.configureApi.cxx('configure-board-discover', index);
        });

        let sketchName = clone.querySelector('#id-configure-board-sketch-name-x');
        sketchName.id = `id-configure-board-sketch-name-${index}`;

        let sketchFile = clone.querySelector('#id-configure-board-sketch-file-x');
        sketchFile.id = `id-configure-board-sketch-file-${index}`

        let sketchVersion = clone.querySelector('#id-configure-board-sketch-ver-x');
        sketchVersion.id = `id-configure-board-sketch-ver-${index}`

        let sketchProgress = clone.querySelector('#id-configure-board-sketch-progress-x');
        sketchProgress.id = `id-configure-board-sketch-progress-${index}`
        sketchProgress.classList.add('is-hidden');

        let sketchStatus = clone.querySelector('#id-configure-board-sketch-status-x');
        sketchStatus.id = `id-configure-board-sketch-status-${index}`
        sketchStatus.classList.add('is-hidden');

        let sketchUpdate = clone.querySelector('#id-configure-board-sketch-update-x');
        sketchUpdate.id = `id-configure-board-sketch-update-${index}`
        sketchUpdate.classList.add('is-hidden');
        sketchUpdate.addEventListener('click', (event) => {
            //ipc.send('configure-board-load', index);
        });

        let sketchLoad = clone.querySelector('#id-configure-board-sketch-load-x');
        sketchLoad.id = `id-configure-board-sketch-load-${index}`
        sketchLoad.classList.add('is-hidden');
        sketchLoad.addEventListener('click', (event) => {
            //ipc.send('configure-board-load', index);
        });

        return clone;
    };
};

/**
 * Display the badge.
 *
 * @param {number} index - The UI index of the board (0-x).
 * @param {Object} info - The board/shield/sketch information.
 */
function displayTitleAndBadge(index, info) {

    if (index >= 0) {
        let boardTitle = document.querySelector(`#id-configure-board-title-${index}`);
        if (info?.sketchName) {
            boardTitle.textContent = info.sketchName;
        } else {
            boardTitle.textContent = "Unconfigured";
        }

        let boardBadge = document.querySelector(`#id-configure-board-badge-${index}`);
        if (info?.shieldName) {
            boardBadge.textContent = "Ready";
            boardBadge.classList.remove('uk-label-warning');
            boardBadge.classList.add('uk-label-success');
        } else {
            boardBadge.textContent = "Discovery Needed";
            boardBadge.classList.remove('uk-label-success');
            boardBadge.classList.add('uk-label-warning');
        }
    }
}

/**
 * Display a board.
 *
 * @param {number} index - The UI index of the board (0-x).
 * @param {Object} boards - The board information.
 */
function displayBoard(index, board) {

    if (index >= 0) {
        let boardLabel = document.querySelector(`#id-configure-board-id-${index}`);
        boardLabel.textContent = board.path;

        let boardName = document.querySelector(`#id-configure-board-name-${index}`);
        boardName.textContent = board.boardName;

        let boardImage = document.querySelector(`#id-configure-board-img-${index}`);
        boardImage.src = board.boardImage;

        displayTitleAndBadge(index, board);
    }
};

/**
 * Display a shield.
 *
 * @param {number} index - The UI index of the shield (0-x).
 * @param {Object} shield - The shield information.
 */
function displayShield(index, shield) {
    if (index >= 0) {
        let boardBadge = document.querySelector(`#id-configure-board-badge-${index}`);
        let shieldName = document.querySelector(`#id-configure-board-shield-name-${index}`);
        if (shield?.shieldName) {
            boardBadge.textContent = "Ready";
            boardBadge.classList.remove('uk-label-warning');
            boardBadge.classList.add('uk-label-success');
            shieldName.textContent = shield.shieldName;
        } else {
            boardBadge.textContent = "Discovery Needed";
            boardBadge.classList.remove('uk-label-success');
            boardBadge.classList.add('uk-label-warning');
            shieldName.textContent = "Unknown";
        }

        let shieldImage = document.querySelector(`#id-configure-board-shield-img-${index}`);
        if (shield?.shieldImage) {
            shieldImage.src = shield.shieldImage;
            shieldImage.classList.remove('is-hidden');
        } else {
            shieldImage.classList.add('is-hidden');
        }

        let shieldProgress = document.querySelector(`#id-configure-board-shield-progress-${index}`);
        if (shield?.shieldProgress) {
            shieldProgress.value = shield.shieldProgress;
            shieldProgress.classList.remove('is-hidden');
        } else {
            shieldProgress.classList.add('is-hidden');
        }

        let shieldStatus = document.querySelector(`#id-configure-board-shield-status-${index}`);
        if (shield?.shieldName) {
            shieldStatus.classList.remove('is-hidden');
        } else {
            shieldImage.classList.add('is-hidden');
        }

        let shieldLoad = document.querySelector(`#id-configure-board-shield-load-${index}`);
        let shieldDiscover = document.querySelector(`#id-configure-board-shield-discover-${index}`);
        if (shield?.shieldName && !shield?.shieldProgress) {
            shieldLoad.classList.add('is-hidden');
            shieldDiscover.classList.add('is-hidden');
        } else {
            shieldLoad.classList.remove('is-hidden');
            shieldDiscover.classList.remove('is-hidden');
        }
    }
};

/**
 * Display a sketch.
 *
 * @param {number} index - The UI index of the shield (0-x).
 * @param {Object} sketch - The sketch information.
 */
function displaySketch(index, sketch) {
    if (index >= 0) {
        let boardTitle = document.querySelector(`#id-configure-board-title-${index}`);
        let sketchName = document.querySelector(`#id-configure-board-sketch-name-${index}`);
        if (sketch?.sketchName) {
            boardTitle.textContent = sketch.sketchName;
            sketchName.textContent = sketch.sketchName;
        } else {
            boardTitle.textContent = "Unconfigured";
            sketchName.textContent = "Unknown";
        }

        let sketchFile = document.querySelector(`#id-configure-board-sketch-file-${index}`);
        if (sketch?.sketchFile) {
            sketchFile.textContent = sketch.sketchFile;
        } else {
            sketchFile.textContent = "";
        }

        let sketchVersion = document.querySelector(`#id-configure-board-sketch-ver-${index}`);
        if (sketch?.sketchVersion) {
            sketchVersion.textContent = `Version ${sketch.sketchVersion}`;
        } else {
            sketchVersion.textContent = "";
        }

        let sketchProgress = document.querySelector(`#id-configure-board-sketch-progress-${index}`);
        if (sketch?.sketchProgress) {
            sketchProgress.value = sketch.sketchProgress;
            sketchProgress.classList.remove('is-hidden');
        } else {
            sketchProgress.classList.add('is-hidden');
        }

        let sketchStatus = document.querySelector(`#id-configure-board-sketch-status-${index}`);
        if (sketch?.sketchStatus) {
            sketchStatus.classList.remove('is-hidden');
        } else {
            sketchStatus.classList.add('is-hidden');
        }

        let sketchUpdate = document.querySelector(`#id-configure-board-sketch-update-${index}`);
        let sketchLoad = document.querySelector(`#id-configure-board-sketch-load-${index}`);
        if (sketch?.sketchNeedsUpdate) {
            sketchLoad.classList.add('is-hidden');
            sketchUpdate.classList.remove('is-hidden');
        } else if (sketch?.sketchNeedsLoad) {
            sketchLoad.classList.add('is-hidden');
            sketchUpdate.classList.remove('is-hidden');
        } else {
            sketchUpdate.classList.add('is-hidden');
            sketchLoad.classList.add('is-hidden');
        }
    }
};
