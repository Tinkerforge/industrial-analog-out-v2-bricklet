#include "bindings/hal_common.h"
#include "bindings/bricklet_industrial_analog_out_v2.h"

#define UID "XYZ" // Change XYZ to the UID of your Industrial Analog Out Bricklet 2.0

void check(int rc, const char* msg);

TF_IndustrialAnalogOutV2 iao;

void example_setup(TF_HalContext *hal) {
	// Create device object
	check(tf_industrial_analog_out_v2_create(&iao, UID, hal), "create device object");

	// Set output current to 4.5mA
	check(tf_industrial_analog_out_v2_set_current(&iao, 4500), "call set_current");
	check(tf_industrial_analog_out_v2_set_enabled(&iao, true), "call set_enabled");
}

void example_loop(TF_HalContext *hal) {
	// Poll for callbacks
	tf_hal_callback_tick(hal, 0);
}
