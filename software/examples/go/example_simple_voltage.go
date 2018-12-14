package main

import (
	"fmt"
	"tinkerforge/industrial_analog_out_v2_bricklet"
	"tinkerforge/ipconnection"
)

const ADDR string = "localhost:4223"
const UID string = "XYZ" // Change XYZ to the UID of your Industrial Analog Out Bricklet 2.0.

func main() {
	ipcon := ipconnection.New()
	defer ipcon.Close()
	iao, _ := industrial_analog_out_v2_bricklet.New(UID, &ipcon) // Create device object.

	ipcon.Connect(ADDR) // Connect to brickd.
	defer ipcon.Disconnect()
	// Don't use device before ipcon is connected.

	// Set output voltage to 3.3V
	iao.SetVoltage(3300)
	iao.SetEnabled(true)

	fmt.Print("Press enter to exit.")
	fmt.Scanln()

	iao.SetEnabled(false)
}
