/* industrial-analog-out-v2-bricklet
 * Copyright (C) 2018 Olaf Lüke <olaf@tinkerforge.com>
 *
 * communication.c: TFP protocol message handling
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

#include "communication.h"

#include "bricklib2/utility/communication_callback.h"
#include "bricklib2/protocols/tfp/tfp.h"

#include "dac7760.h"
#include "bricklib2/utility/util_definitions.h"

BootloaderHandleMessageResponse handle_message(const void *message, void *response) {
	switch(tfp_get_fid_from_message(message)) {
		case FID_SET_ENABLED: return set_enabled(message);
		case FID_GET_ENABLED: return get_enabled(message, response);
		case FID_SET_VOLTAGE: return set_voltage(message);
		case FID_GET_VOLTAGE: return get_voltage(message, response);
		case FID_SET_CURRENT: return set_current(message);
		case FID_GET_CURRENT: return get_current(message, response);
		case FID_SET_CONFIGURATION: return set_configuration(message);
		case FID_GET_CONFIGURATION: return get_configuration(message, response);
		default: return HANDLE_MESSAGE_RESPONSE_NOT_SUPPORTED;
	}
}


BootloaderHandleMessageResponse set_enabled(const SetEnabled *data) {
	dac7760.enabled        = data->enabled;
	dac7760.control_update = true;

	return HANDLE_MESSAGE_RESPONSE_EMPTY;
}

BootloaderHandleMessageResponse get_enabled(const GetEnabled *data, GetEnabled_Response *response) {
	response->header.length = sizeof(GetEnabled_Response);
	response->enabled       = dac7760.enabled;

	return HANDLE_MESSAGE_RESPONSE_NEW_MESSAGE;
}

BootloaderHandleMessageResponse set_voltage(const SetVoltage *data) {
	// Set voltage and value according to data from user
	switch(dac7760.voltage_range) {
		case INDUSTRIAL_ANALOG_OUT_V2_VOLTAGE_RANGE_0_TO_5V: {
			dac7760.voltage = BETWEEN(0, data->voltage, 5000);
			dac7760.value = SCALE(dac7760.voltage, 0, 5000, DAC7760_MIN, DAC7760_MAX);
			break;
		}

		case INDUSTRIAL_ANALOG_OUT_V2_VOLTAGE_RANGE_0_TO_10V: {
			dac7760.voltage = BETWEEN(0, data->voltage, 10000);
			dac7760.value = SCALE(dac7760.voltage, 0, 10000, DAC7760_MIN, DAC7760_MAX);
			break;
		}
	}

	// Update current
	switch(dac7760.current_range) {
		case INDUSTRIAL_ANALOG_OUT_V2_CURRENT_RANGE_4_TO_20MA: {
			dac7760.current = SCALE(dac7760.value, DAC7760_MIN, DAC7760_MAX, 4000, 20000);
			break;
		}

		case INDUSTRIAL_ANALOG_OUT_V2_CURRENT_RANGE_0_TO_20MA: {
			dac7760.current = SCALE(dac7760.value, DAC7760_MIN, DAC7760_MAX, 0, 20000);
			break;
		}

		case INDUSTRIAL_ANALOG_OUT_V2_CURRENT_RANGE_0_TO_24MA: {
			dac7760.current = SCALE(dac7760.value, DAC7760_MIN, DAC7760_MAX, 0, 24000);
			break;
		}
	}

	dac7760.value_update = true;

	return HANDLE_MESSAGE_RESPONSE_EMPTY;
}

BootloaderHandleMessageResponse get_voltage(const GetVoltage *data, GetVoltage_Response *response) {
	response->header.length = sizeof(GetVoltage_Response);
	response->voltage       = dac7760.voltage;

	return HANDLE_MESSAGE_RESPONSE_NEW_MESSAGE;
}

BootloaderHandleMessageResponse set_current(const SetCurrent *data) {
	// Set current and value according to data from user
	switch(dac7760.current_range) {
		case INDUSTRIAL_ANALOG_OUT_V2_CURRENT_RANGE_4_TO_20MA: {
			dac7760.current = BETWEEN(4000, data->current, 20000);
			dac7760.value = SCALE(dac7760.current, 4000, 20000, DAC7760_MIN, DAC7760_MAX);
			break;
		}

		case INDUSTRIAL_ANALOG_OUT_V2_CURRENT_RANGE_0_TO_20MA: {
			dac7760.current = BETWEEN(0, data->current, 20000);
			dac7760.value = SCALE(dac7760.current, 0, 20000, DAC7760_MIN, DAC7760_MAX);
			break;
		}

		case INDUSTRIAL_ANALOG_OUT_V2_CURRENT_RANGE_0_TO_24MA: {
			dac7760.current = BETWEEN(0, data->current, 24000);
			dac7760.value = SCALE(dac7760.current, 0, 24000, DAC7760_MIN, DAC7760_MAX);
			break;
		}
	}

	// Update voltage
	switch(dac7760.voltage_range) {
		case INDUSTRIAL_ANALOG_OUT_V2_VOLTAGE_RANGE_0_TO_5V: {
			dac7760.voltage = SCALE(dac7760.value, DAC7760_MIN, DAC7760_MAX, 0, 5000);
			break;
		}

		case INDUSTRIAL_ANALOG_OUT_V2_VOLTAGE_RANGE_0_TO_10V: {
			dac7760.voltage = SCALE(dac7760.value, DAC7760_MIN, DAC7760_MAX, 0, 10000);
			break;
		}
	}

	dac7760.value_update = true;

	return HANDLE_MESSAGE_RESPONSE_EMPTY;
}

BootloaderHandleMessageResponse get_current(const GetCurrent *data, GetCurrent_Response *response) {
	response->header.length = sizeof(GetCurrent_Response);
	response->current       = dac7760.current;

	return HANDLE_MESSAGE_RESPONSE_NEW_MESSAGE;
}

BootloaderHandleMessageResponse set_configuration(const SetConfiguration *data) {
	if((data->current_range > INDUSTRIAL_ANALOG_OUT_V2_CURRENT_RANGE_0_TO_24MA) ||
	   (data->voltage_range > INDUSTRIAL_ANALOG_OUT_V2_VOLTAGE_RANGE_0_TO_10V)) {
		return HANDLE_MESSAGE_RESPONSE_INVALID_PARAMETER;
	}

	dac7760.current_range  = data->current_range;
	dac7760.voltage_range  = data->voltage_range;
	dac7760.config_update  = true;
	dac7760.control_update = true;

	return HANDLE_MESSAGE_RESPONSE_EMPTY;
}

BootloaderHandleMessageResponse get_configuration(const GetConfiguration *data, GetConfiguration_Response *response) {
	response->header.length = sizeof(GetConfiguration_Response);
	response->current_range = dac7760.current_range;
	response->voltage_range = dac7760.voltage_range;

	return HANDLE_MESSAGE_RESPONSE_NEW_MESSAGE;
}





void communication_tick(void) {
	communication_callback_tick();
}

void communication_init(void) {
	communication_callback_init();
}
