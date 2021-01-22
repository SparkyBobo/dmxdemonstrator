// This file is required by the index.html file and will
// be executed in the renderer process for that window.
// All of the Node.js APIs are available in this process.

require('./renderer-process/navigation.js')

const avrConnection = require('./renderer-process/avr-connection')
const tableify = require('tableify')

avrConnection.list(function(err, ports) {
    if (err) {
        document.getElementById('error').textContent = err.message
        return
    } else {
        document.getElementById('error').textContent = ''
    }

    if (ports.length === 0) {
        document.getElementById('error').textContent = 'No ports discovered'
    }

    tableHTML = tableify(ports)
    document.getElementById('ports').innerHTML = tableHTML
});