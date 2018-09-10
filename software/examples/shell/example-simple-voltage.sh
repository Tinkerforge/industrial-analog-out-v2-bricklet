#!/bin/sh
# Connects to localhost:4223 by default, use --host and --port to change this

uid=XYZ # Change XYZ to the UID of your Industrial Analog Out Bricklet 2.0

# Set output voltage to 3.3V
tinkerforge call industrial-analog-out-v2-bricklet $uid set-voltage 3300
tinkerforge call industrial-analog-out-v2-bricklet $uid set-enabled true

echo "Press key to exit"; read dummy

tinkerforge call industrial-analog-out-v2-bricklet $uid set-enabled false
