#!/usr/bin/env python
# -*- coding: utf-8 -*-

HOST = "localhost"
PORT = 4223
UID = "XYZ" # Change XYZ to the UID of your Industrial Analog Out Bricklet 2.0

from tinkerforge.ip_connection import IPConnection
from tinkerforge.bricklet_industrial_analog_out_v2 import BrickletIndustrialAnalogOutV2

if __name__ == "__main__":
    ipcon = IPConnection() # Create IP connection
    iao = BrickletIndustrialAnalogOutV2(UID, ipcon) # Create device object

    ipcon.connect(HOST, PORT) # Connect to brickd
    # Don't use device before ipcon is connected

    # Set output voltage to 3.3V
    iao.set_voltage(3300)
    iao.enable()

    raw_input("Press key to exit\n") # Use input() in Python 3
    iao.disable()
    ipcon.disconnect()
