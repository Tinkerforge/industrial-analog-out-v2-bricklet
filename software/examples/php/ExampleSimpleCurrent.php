<?php

require_once('Tinkerforge/IPConnection.php');
require_once('Tinkerforge/BrickletIndustrialAnalogOutV2.php');

use Tinkerforge\IPConnection;
use Tinkerforge\BrickletIndustrialAnalogOutV2;

const HOST = 'localhost';
const PORT = 4223;
const UID = 'XYZ'; // Change XYZ to the UID of your Industrial Analog Out Bricklet 2.0

$ipcon = new IPConnection(); // Create IP connection
$iao = new BrickletIndustrialAnalogOutV2(UID, $ipcon); // Create device object

$ipcon->connect(HOST, PORT); // Connect to brickd
// Don't use device before ipcon is connected

// Set output current to 4.5mA
$iao->setCurrent(4500);
$iao->setEnabled(TRUE);

echo "Press key to exit\n";
fgetc(fopen('php://stdin', 'r'));
$iao->setEnabled(FALSE);
$ipcon->disconnect();

?>
