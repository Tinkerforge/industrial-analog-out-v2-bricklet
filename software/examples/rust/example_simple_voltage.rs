use std::{io, error::Error};

use tinkerforge::{ip_connection::IpConnection, 
                  industrial_analog_out_v2_bricklet::*};


const HOST: &str = "localhost";
const PORT: u16 = 4223;
const UID: &str = "XYZ"; // Change XYZ to the UID of your Industrial Analog Out Bricklet 2.0.

fn main() -> Result<(), Box<dyn Error>> {
    let ipcon = IpConnection::new(); // Create IP connection.
    let iao = IndustrialAnalogOutV2Bricklet::new(UID, &ipcon); // Create device object.

    ipcon.connect((HOST, PORT)).recv()??; // Connect to brickd.
    // Don't use device before ipcon is connected.

		// Set output voltage to 3.3V
		iao.set_voltage(3300);
		iao.set_enabled(true);

    println!("Press enter to exit.");
    let mut _input = String::new();
    io::stdin().read_line(&mut _input)?;
		iao.set_enabled(false);
    ipcon.disconnect();
    Ok(())
}
