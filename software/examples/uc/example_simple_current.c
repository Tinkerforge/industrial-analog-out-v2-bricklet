// This example is not self-contained.
// It requires usage of the example driver specific to your platform.
// See the HAL documentation.

#include "src/bindings/hal_common.h"
#include "src/bindings/bricklet_industrial_analog_out_v2.h"

void check(int rc, const char *msg);
void example_setup(TF_HAL *hal);
void example_loop(TF_HAL *hal);

static TF_IndustrialAnalogOutV2 iao;

void example_setup(TF_HAL *hal) {
	// Create device object
	check(tf_industrial_analog_out_v2_create(&iao, NULL, hal), "create device object");

	// Set output current to 4.5mA
	check(tf_industrial_analog_out_v2_set_current(&iao, 4500), "call set_current");
	check(tf_industrial_analog_out_v2_set_enabled(&iao, true), "call set_enabled");
}

void example_loop(TF_HAL *hal) {
	// Poll for callbacks
	tf_hal_callback_tick(hal, 0);
}
