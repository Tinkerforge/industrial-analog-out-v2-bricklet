#!/usr/bin/perl

use strict;
use Tinkerforge::IPConnection;
use Tinkerforge::BrickletIndustrialAnalogOutV2;

use constant HOST => 'localhost';
use constant PORT => 4223;
use constant UID => 'XYZ'; # Change XYZ to the UID of your Industrial Analog Out Bricklet 2.0

my $ipcon = Tinkerforge::IPConnection->new(); # Create IP connection
my $iao = Tinkerforge::BrickletIndustrialAnalogOutV2->new(&UID, $ipcon); # Create device object

$ipcon->connect(&HOST, &PORT); # Connect to brickd
# Don't use device before ipcon is connected

# Set output voltage to 3.3V
$iao->set_voltage(3300);
$iao->set_enabled(1);

print "Press key to exit\n";
<STDIN>;
$iao->set_enabled(0);
$ipcon->disconnect();
