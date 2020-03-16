var Tinkerforge = require('tinkerforge');

var HOST = 'localhost';
var PORT = 4223;
var UID = 'XYZ'; // Change XYZ to the UID of your Industrial Analog Out Bricklet 2.0

var ipcon = new Tinkerforge.IPConnection(); // Create IP connection
var iao = new Tinkerforge.BrickletIndustrialAnalogOutV2(UID, ipcon); // Create device object

ipcon.connect(HOST, PORT,
    function (error) {
        console.log('Error: ' + error);
    }
); // Connect to brickd
// Don't use device before ipcon is connected

ipcon.on(Tinkerforge.IPConnection.CALLBACK_CONNECTED,
    function (connectReason) {
        // Set output voltage to 3.3V
        iao.setVoltage(3300);
        iao.setEnabled(true);
    }
);

console.log('Press key to exit');
process.stdin.on('data',
    function (data) {
        iao.setEnabled(false);

        ipcon.disconnect();
        process.exit(0);
    }
);
