/**
 * @file Connect Tab.
 * @copyright Copyright (c) Sparky Bobo Designs. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 */
'use strict';

let onConnectPage = null;
let refreshConnectTxBoard = true;
let refreshConnectRxBoard = true;
let refreshConnectFsBoard = true;
let transmitterBoard;
let receiverBoard;
let scramblerBoard;

// Initialize
document.addEventListener('readystatechange', (event) => {
    if (document.readyState == 'complete') {

        // Add a button listener for handling navigation to toggle tx/rx status.
        document.body.addEventListener('click', (event) => {
            if (event.target.dataset.section) {
                onConnectPage = (event.target.dataset.section == "connect");
                if (onConnectPage && (refreshConnectTxBoard || refreshConnectRxBoard || refreshConnectFsBoard)) {
                    window.demoApi.getDemoBoards();
                }
            }
        });
    };
});

// Display the boards.
window.demoApi.onBoardTx((board) => {
    transmitterBoard = board;
    refreshConnectTxBoard = !board;
    displayConnection();
});

window.demoApi.onBoardRx((board) => {
    receiverBoard = board;
    refreshConnectRxBoard = !board;
    displayConnection();
});

window.demoApi.onBoardFs((board) => {
    scramblerBoard = board;
    refreshConnectFsBoard = !board;
    displayConnection();
});

/**
 * Display the connections
 *
 */
function displayConnection() {

    // Build board list
    let boardListHtml = '';
    if (transmitterBoard) {
        boardListHtml = boardListHtml + `<li>${transmitterBoard?.shieldName} connected via ${transmitterBoard?.path}</li>`
    }

    if (receiverBoard) {
        boardListHtml = boardListHtml + `<li>${receiverBoard?.shieldName} connected via ${receiverBoard?.path}</li>`
    }

    if (scramblerBoard) {
        boardListHtml = boardListHtml + `<li>${scramblerBoard?.shieldName} connected via ${scramblerBoard?.path}</li>`
    }

    // If there is a frame scrambler
    let connectImageSrc = ".\\assets\\svg\\connect-";
    let connectDiagram = document.querySelector('#id-connect-diagram');
    let connectImage = document.querySelector('#id-connect-diagram-img');
    if (transmitterBoard?.shieldImage && receiverBoard?.shieldImage) {
        connectImage.classList.remove('connect-diagram-img-3');
        connectImage.classList.add('connect-diagram-img-2');

        let imagePrefix = '.\\assets\\svg\\board-';
        let imageSuffix = '.svg';

        let txPart = transmitterBoard.shieldImage.replace(imagePrefix,'').replace(imageSuffix,'');
        connectImageSrc += `${txPart}-`;

        if (scramblerBoard?.shieldImage) {
            let fsPart = scramblerBoard.shieldImage.replace(imagePrefix,'').replace(imageSuffix,'');
            connectImageSrc += `${fsPart}-`;
            connectImage.classList.remove('connect-diagram-img-2');
            connectImage.classList.add('connect-diagram-img-3');
        }

        let rxPart = receiverBoard.shieldImage.replace(imagePrefix,'').replace(imageSuffix,'');
        connectImageSrc += `${rxPart}.svg`;

        connectImage.src = connectImageSrc;
        connectDiagram.classList.remove('is-hidden');
    } else {
        connectDiagram.classList.add('is-hidden');
    }

    // Display board list.
    let connectBoardListCard = document.querySelector('#id-connect-overview-list-boards');
    let connectNoBoardListCard = document.querySelector('#id-connect-overview-list-noboards');
    let connectBoardList = document.querySelector('#id-connect-overview-list');
    if (boardListHtml.length > 0) {
        connectBoardList.innerHTML = boardListHtml;
        connectNoBoardListCard.classList.add('is-hidden');
        connectBoardListCard.classList.remove('is-hidden');
    } else {
        connectBoardListCard.classList.add('is-hidden');
        connectNoBoardListCard.classList.remove('is-hidden');
    }
};
