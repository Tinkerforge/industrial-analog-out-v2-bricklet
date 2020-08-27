#include "bindings/hal_common.h"
#include "bindings/bricklet_industrial_analog_out_v2.h"

#define UID "XYZ" // Change XYZ to the UID of your Industrial Analog Out Bricklet 2.0

void check(int rc, const char* msg);

void example_setup(TF_HalContext *hal);
void example_loop(TF_HalContext *hal);


static TF_IndustrialAnalogOutV2 iao;

void example_setup(TF_HalContext *hal) {
	// Create device object
	check(tf_industrial_analog_out_v2_create(&iao, UID, hal), "create device object");

	// Set output voltage to 3.3V
	check(tf_industrial_analog_out_v2_set_voltage(&iao, 3300), "call set_voltage");
	check(tf_industrial_analog_out_v2_set_enabled(&iao, true), "call set_enabled");
}

void example_loop(TF_HalContext *hal) {
	// Poll for callbacks
	tf_hal_callback_tick(hal, 0);
}
