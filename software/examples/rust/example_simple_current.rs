use std::{error::Error, io};

use tinkerforge::{industrial_analog_out_v2_bricklet::*, ip_connection::IpConnection};

const HOST: &str = "localhost";
const PORT: u16 = 4223;
const UID: &str = "XYZ"; // Change XYZ to the UID of your Industrial Analog Out Bricklet 2.0.

fn main() -> Result<(), Box<dyn Error>> {
    let ipcon = IpConnection::new(); // Create IP connection.
    let iao = IndustrialAnalogOutV2Bricklet::new(UID, &ipcon); // Create device object.

    ipcon.connect((HOST, PORT)).recv()??; // Connect to brickd.
                                          // Don't use device before ipcon is connected.

    // Set output current to 4.5mA
    iao.set_current(4500).recv()?;
    iao.set_enabled(true).recv()?;

    println!("Press enter to exit.");
    let mut _input = String::new();
    io::stdin().read_line(&mut _input)?;

    iao.set_enabled(false).recv()?;

    ipcon.disconnect();
    Ok(())
}
