/**
 * @file Demo Tab.
 * @copyright Copyright (c) Sparky Bobo Designs. All rights reserved.
 * @license Licensed under the MIT License. See License.txt in the project root for license information.
 */
'use strict';

let onDemoPage = null;
let refreshTxBoard = true;
let refreshRxBoard = true;
let refreshFsBoard = true;
let txStatusVisible = null;
let rxStatusVisible = null;
let lastTxLine = '';
let lastRxLine = '';
let nextFrameTabTimeout;

const frameStatePotentialBreak = 253;
const frameStateUnexpectedStartCode = 254;
const frameStateError = 255;

// Initialize
document.addEventListener('readystatechange', (event) => {
    if (document.readyState == 'complete') {

        // Add a button listener for handling navigation to toggle tx/rx status.
        document.body.addEventListener('click', (event) => {
            if (event.target.dataset.section) {
                onDemoPage = (event.target.dataset.section == "demo");
                updateBoardStatus();

                if (onDemoPage && (refreshTxBoard || refreshRxBoard || refreshFsBoard)) {
                    window.demoApi.getDemoBoards();
                }
            }
        });

        // Transmitter controls
        document.getElementById('id-demo-tx-clk-slow').addEventListener('click', (event) => {
            console.log('slow');
            window.demoApi.clockSlow();
        });

        document.getElementById('id-demo-tx-clk-step').addEventListener('click', (event) => {
            window.demoApi.clockStep();
        });

        // Determine status window open or closed.
        txStatusVisible = !document.getElementById('id-demo-tx-output').hidden;
        rxStatusVisible = !document.getElementById('id-demo-rx-output').hidden;

        const visibilityCallback = (mutationList, observer) => {
            for (const mutation of mutationList) {
                if (mutation.type === "attributes") {
                    if (mutation.target.id == "id-demo-tx-output") {
                        txStatusVisible = !document.getElementById('id-demo-tx-output').hidden;
                        window.demoApi.setTxStatus(true, txStatusVisible);
                    }
                    if (mutation.target.id == "id-demo-rx-output") {
                        rxStatusVisible = !document.getElementById('id-demo-rx-output').hidden;
                        window.demoApi.setRxStatus(true, rxStatusVisible);
                    }
                }
            }
        };

        const visibilityobserver = new MutationObserver(visibilityCallback);
        const visibilityObserverConfig = { attributeFilter: [ "hidden" ] };
        visibilityobserver.observe(document.getElementById('id-demo-tx-output'), visibilityObserverConfig);
        visibilityobserver.observe(document.getElementById('id-demo-rx-output'), visibilityObserverConfig);

        // Set progress to 0.
        displayStep('tx', -1, -1);
        displayStep('rx', -1, -1);

        // Smooth out frame animation
        let breakProgress = document.getElementById(`id-demo-tx-frame-break`);
        let startProgress = document.getElementById(`id-demo-tx-frame-start`);
        let dimmer1Progress = document.getElementById(`id-demo-tx-frame-dim1`);
        let dimmer2Progress = document.getElementById(`id-demo-tx-frame-dim2`);
        let dimmer3Progress = document.getElementById(`id-demo-tx-frame-dim3`);
        let dimmer4Progress = document.getElementById(`id-demo-tx-frame-dim4`);
    };
});

// Display the boards.
window.demoApi.onBoardTx((board) => {
    displayDemoBoard('tx', board);
    refreshTxBoard = !board;
});

window.demoApi.onBoardRx((board) => {
    displayDemoBoard('rx', board);
    refreshRxBoard = !board;
});

window.demoApi.onBoardFs((board) => {
    //displayDemoBoard('fs', board);
    refreshFsBoard = !board;
});

// Display the board's data responses.
window.demoApi.onTxStatus((data) => {
    if (data.line) {
        document.getElementById('id-demo-tx-out-text').innerHTML = lastTxLine + '\r\n' + data.line;
        lastTxLine = data.line;
    } else {
        var clockSlow = data.currentClockMode == 1;
        var clockFast = data.currentClockMode == 2;
        displayStep('tx', data.currentFrameStep, -1);
        displayDimmers('tx', data.dimmerLevels);
        displayTxStatus(clockSlow, clockFast);
        displayTxStatusLeds(data.clockBit, data.dataBit, clockSlow, clockFast, data.currentSelectedDimmer);
        // Unused
        // data.boardTypeId
        // data.clockValue
        // data.currentDimmerLevel
    }
});

window.demoApi.onRxStatus((data) => {
    if (data.line) {
        document.getElementById('id-demo-rx-out-text').innerHTML = lastRxLine + '\r\n' + data.line;
        lastRxLine = data.line;
    } else {
        var rxError = data.frameState == frameStatePotentialBreak || data.frameState == frameStateError;

        displayStep('rx', data.currentFrameStep, data.breakCounter);
        displayDimmers('rx', data.dimmerLevels);
        displayRxStatus(data.startCodeMatch, rxError);
        displayRxStatusLeds(data.clockBit, data.dataBit, data.startCodeMatch, rxError, data.dimmerLevels);
        // Unused
        // data.boardTypeId
        // data.frameState
        // data.nextFrameState
        // data.receivedStartCode
        // data.expectedStartCode
    }
});

/**
 * Update the status setting of each board.
 */
function updateBoardStatus() {
    if (onDemoPage) {
        window.demoApi.setTxStatus(true, txStatusVisible);
        window.demoApi.setRxStatus(true, rxStatusVisible);
    } else {
        window.demoApi.setTxStatus(false, false);
        window.demoApi.setRxStatus(false, false);
    }
}

/**
 * Display the demo board.
 *
 * @param {string} id - The id of the shield, 'tx' or 'rx'
 * @param {Object} shield - The shield information.
 */
function displayDemoBoard(id, shield) {

    // Update the shield info.
    let shieldName = document.querySelector(`#id-demo-${id}-board-name`);
    if (shield?.shieldName) {
        shieldName.textContent = shield.shieldName;
    } else {
        shieldName.textContent = "Unknown";
    }

    let shieldImage = document.querySelector(`#id-demo-${id}-board-img`);
    if (shield?.shieldImage) {
        shieldImage.src = shield.shieldImage;
        shieldImage.classList.remove('is-hidden');
    } else {
        shieldImage.classList.add('is-hidden');
    }
}

/**
 * Display the dimmer levels.
 *
 * @param {number} index - The UI section of the board (tx/rx).
 * @param {int[]} levels - The dimmer levels.
 */
function displayDimmers(section, levels) {

    let dimmer1 = document.getElementById(`id-demo-${section}-dim1`);
    dimmer1.value = levels[0];

    let dimmer2 = document.getElementById(`id-demo-${section}-dim2`);
    dimmer2.value = levels[1];

    let dimmer3 = document.getElementById(`id-demo-${section}-dim3`);
    dimmer3.value = levels[2];

    let dimmer4 = document.getElementById(`id-demo-${section}-dim4`);
    dimmer4.value = levels[3];
}

/**
 * Display the step.
 *
 * @param {string} section - The UI section of the board (tx/rx).
 * @param {int} step - The step number.
 */
function displayStep(section, step, breakStep) {

    var frameTab = -1;
    var maxLevel = false;
    var breakProgressValue = 0;
    var startProgressValue = 0;
    var dimmer1ProgressValue = 0;
    var dimmer2ProgressValue = 0;
    var dimmer3ProgressValue = 0;
    var dimmer4ProgressValue = 0;

    // Step
    let stepLabel = document.getElementById(`id-demo-${section}-step`);
    if (breakStep >= 10 && breakStep < 21) {
        stepLabel.innerHTML = `${breakStep}?`;
    } else {
        var stepValue = step >= 1000 ? '??' : `${step}`;
        stepLabel.innerHTML = stepValue;
    }

    // Break frame
    if (step >= 0 && step <= 25) {
        breakProgressValue = step + 1;
        maxLevel = step == 25;
        frameTab = 0;
    }

    // Start code frame
    if (step >= 26 && step <= 37) {
        startProgressValue = step-25;
        maxLevel = step == 37;
        frameTab = 1;
    }

    // Dimmer 1 frame
    if (step >= 38 && step <= 49) {
        dimmer1ProgressValue = step-37;
        maxLevel = step == 49;
        frameTab = 2;
    }

    // Dimmer 2 frame
    if (step >= 50 && step <= 61) {
        dimmer2ProgressValue = step-49;
        maxLevel = step == 61;
        frameTab = 3;
    }

    // Dimmer 3 frame
    if (step >= 62 && step <= 73) {
        dimmer3ProgressValue = step-61;
        maxLevel = step == 73;
        frameTab = 4;
    }

    // Dimmer 4 frame & end of packet break
    if (step >= 74 && step <= 87) {
        dimmer4ProgressValue = step-73;
        maxLevel = step == 87;
        frameTab = 5;
    }

    // If tx, update the tab to pick the right frame
    if (section == 'tx' && frameTab >= 0) {
        UIkit.tab('#id-demo-frame-tabs').show(frameTab);
    }

    // Update progress bars
    let breakProgress = document.getElementById(`id-demo-${section}-frame-break`);
    breakProgress.value = breakProgressValue;

    let startProgress = document.getElementById(`id-demo-${section}-frame-start`);
    startProgress.value = startProgressValue;

    let dimmer1Progress = document.getElementById(`id-demo-${section}-frame-dim1`);
    dimmer1Progress.value = dimmer1ProgressValue;

    let dimmer2Progress = document.getElementById(`id-demo-${section}-frame-dim2`);
    dimmer2Progress.value = dimmer2ProgressValue;

    let dimmer3Progress = document.getElementById(`id-demo-${section}-frame-dim3`);
    dimmer3Progress.value = dimmer3ProgressValue;

    let dimmer4Progress = document.getElementById(`id-demo-${section}-frame-dim4`);
    dimmer4Progress.value = dimmer4ProgressValue;

    // If the progress has reached the max, trigger the jump to the next tab
    // after we started the progress bar animation. It looks a bit jerky to
    // see the tab animation along with animation of progress bar update from 0->1
    if (section == 'tx' && maxLevel) {
        clearTimeout(nextFrameTabTimeout);
        nextFrameTabTimeout = setTimeout(() => {
            console.log("Next");
            UIkit.tab('#id-demo-frame-tabs').show((frameTab+1)%6);
        }, 300);
    }
}

/**
 * Display the tx status
 *
 * @param {int} slow - The slow clock speed status.
 * @param {int} fast - The fast clock speed status.
 */
function displayTxStatus(clockSlow, clockFast) {
    // Where are these displayed?
}

/**
 * Display the tx status leds
 *
 * @param {int} clock - The clock led status.
 * @param {int} data - The data led status.
 * @param {int} slow - The slow led status.
 * @param {int} fast - The fast led status.
 * @param {int} selected - The selected dimmer status.
 */
function displayTxStatusLeds(clock, data, levels, slow, fast, selected) {

    let clockLed = document.getElementById(`id-demo-tx-board-clock-led`);
    if (clock) {
        clockLed.classList.remove('is-hidden');
    } else {
        clockLed.classList.add('is-hidden');
    }

    let dataLed = document.getElementById(`id-demo-tx-board-data-led`);
    if (data) {
        dataLed.classList.remove('is-hidden');
    } else {
        dataLed.classList.add('is-hidden');
    }

    let slowLed = document.getElementById(`id-demo-tx-board-slow-led`);
    if (slow) {
        slowLed.classList.remove('is-hidden');
    } else {
        slowLed.classList.add('is-hidden');
    }

    let fastLed = document.getElementById(`id-demo-tx-board-fast-led`);
    if (fast) {
        fastLed.classList.remove('is-hidden');
    } else {
        fastLed.classList.add('is-hidden');
    }

    let dimmer1Led = document.getElementById(`id-demo-tx-board-dim1-led`);
    if (selected == 1) {
        dimmer1Led.classList.remove('is-hidden');
    } else {
        dimmer1Led.classList.add('is-hidden');
    }

    let dimmer2Led = document.getElementById(`id-demo-tx-board-dim2-led`);
    if (selected == 2) {
        dimmer2Led.classList.remove('is-hidden');
    } else {
        dimmer2Led.classList.add('is-hidden');
    }

    let dimmer3Led = document.getElementById(`id-demo-tx-board-dim3-led`);
    if (selected == 3) {
        dimmer3Led.classList.remove('is-hidden');
    } else {
        dimmer3Led.classList.add('is-hidden');
    }

    let dimmer4Led = document.getElementById(`id-demo-tx-board-dim4-led`);
    if (selected == 4) {
        dimmer4Led.classList.remove('is-hidden');
    } else {
        dimmer4Led.classList.add('is-hidden');
    }
}

/**
 * Display the rx status
 *
 * @param {int} match - The start code match led status.
 * @param {int} error - The error  led status.
 */
function displayRxStatus(match, error) {
    let startCodeStatus = document.getElementById(`id-demo-rx-start-code`);
    if (match) {
        startCodeStatus.classList.remove('uk-button-default');
        startCodeStatus.classList.add('uk-button-primary');
    } else {
        startCodeStatus.classList.remove('uk-button-primary');
        startCodeStatus.classList.add('uk-button-default');
    }

    let errorStatus = document.getElementById(`id-demo-rx-error`);
    if (error) {
        errorStatus.classList.remove('uk-button-default');
        errorStatus.classList.add('uk-button-primary');
    } else {
        errorStatus.classList.remove('uk-button-primary');
        errorStatus.classList.add('uk-button-default');
    }
}

/**
 * Display the rx status leds
 *
 * @param {int} clock - The clock led status.
 * @param {int} data - The data led status.
 * @param {int} match - The start code match led status.
 * @param {int} error - The error  led status.
 * @param {int[]} levels  - The dimmer levels.
 */
function displayRxStatusLeds(clock, data, match, error, levels) {
    let clockLed = document.getElementById(`id-demo-rx-board-clock-led`);
    if (clock) {
        clockLed.classList.remove('is-hidden');
    } else {
        clockLed.classList.add('is-hidden');
    }

    let dataLed = document.getElementById(`id-demo-rx-board-data-led`);
    if (data) {
        dataLed.classList.remove('is-hidden');
    } else {
        dataLed.classList.add('is-hidden');
    }

    let matchLed = document.getElementById(`id-demo-rx-board-match-led`);
    if (match) {
        matchLed.classList.remove('is-hidden');
    } else {
        matchLed.classList.add('is-hidden');
    }

    let errorLed = document.getElementById(`id-demo-rx-board-error-led`);
    if (error) {
        errorLed.classList.remove('is-hidden');
    } else {
        errorLed.classList.add('is-hidden');
    }

    // let dimmer1Led = document.getElementById(`id-demo-rx-board-dim1-led`);
    // if (selected == 1) {
    //     dimmer1Led.classList.remove('is-hidden');
    // } else {
    //     dimmer1Led.classList.add('is-hidden');
    // }

    // let dimmer2Led = document.getElementById(`id-demo-tx-board-dim2-led`);
    // if (selected == 2) {
    //     dimmer2Led.classList.remove('is-hidden');
    // } else {
    //     dimmer2Led.classList.add('is-hidden');
    // }

    // let dimmer3Led = document.getElementById(`id-demo-rx-board-dim3-led`);
    // if (selected == 3) {
    //     dimmer3Led.classList.remove('is-hidden');
    // } else {
    //     dimmer3Led.classList.add('is-hidden');
    // }

    // let dimmer4Led = document.getElementById(`id-demo-rx-board-dim4-led`);
    // if (selected == 4) {
    //     dimmer4Led.classList.remove('is-hidden');
    // } else {
    //     dimmer4Led.classList.add('is-hidden');
    // }
}
