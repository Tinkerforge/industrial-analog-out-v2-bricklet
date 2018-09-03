using System;
using Tinkerforge;

class Example
{
	private static string HOST = "localhost";
	private static int PORT = 4223;
	private static string UID = "XYZ"; // Change XYZ to the UID of your Industrial Analog Out Bricklet 2.0

	static void Main()
	{
		IPConnection ipcon = new IPConnection(); // Create IP connection
		BrickletIndustrialAnalogOutV2 iao =
		  new BrickletIndustrialAnalogOutV2(UID, ipcon); // Create device object

		ipcon.Connect(HOST, PORT); // Connect to brickd
		// Don't use device before ipcon is connected

		// Set output current to 4.5mA
		iao.SetCurrent(4500);
		iao.Enable();

		Console.WriteLine("Press enter to exit");
		Console.ReadLine();
		iao.Disable();
		ipcon.Disconnect();
	}
}
