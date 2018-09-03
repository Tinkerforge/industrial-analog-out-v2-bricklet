#include <stdio.h>

#include "ip_connection.h"
#include "bricklet_industrial_analog_out_v2.h"

#define HOST "localhost"
#define PORT 4223
#define UID "XYZ" // Change XYZ to the UID of your Industrial Analog Out Bricklet 2.0

int main(void) {
	// Create IP connection
	IPConnection ipcon;
	ipcon_create(&ipcon);

	// Create device object
	IndustrialAnalogOutV2 iao;
	industrial_analog_out_v2_create(&iao, UID, &ipcon);

	// Connect to brickd
	if(ipcon_connect(&ipcon, HOST, PORT) < 0) {
		fprintf(stderr, "Could not connect\n");
		return 1;
	}
	// Don't use device before ipcon is connected

	// Set output current to 4.5mA
	industrial_analog_out_v2_set_current(&iao, 4500);
	industrial_analog_out_v2_enable(&iao);

	printf("Press key to exit\n");
	getchar();
	industrial_analog_out_v2_disable(&iao);
	industrial_analog_out_v2_destroy(&iao);
	ipcon_destroy(&ipcon); // Calls ipcon_disconnect internally
	return 0;
}
