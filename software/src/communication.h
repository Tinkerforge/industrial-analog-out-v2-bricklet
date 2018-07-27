/* industrial-analog-out-v2-bricklet
 * Copyright (C) 2018 Olaf Lüke <olaf@tinkerforge.com>
 * Copyright (C) 2018 Ishraq Ibne Ashraf <ishraq@tinkerforge.com>
 *
 * communication.h: TFP protocol message handling
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

#ifndef COMMUNICATION_H
#define COMMUNICATION_H

#include <stdint.h>
#include <stdbool.h>

#include "bricklib2/protocols/tfp/tfp.h"
#include "bricklib2/bootloader/bootloader.h"

// Default functions
BootloaderHandleMessageResponse handle_message(const void *data, void *response);
void communication_tick(void);
void communication_init(void);

// Constants
#define INDUSTRIAL_ANALOG_OUT_V2_VOLTAGE_RANGE_0_TO_5V 0
#define INDUSTRIAL_ANALOG_OUT_V2_VOLTAGE_RANGE_0_TO_10V 1

#define INDUSTRIAL_ANALOG_OUT_V2_CURRENT_RANGE_4_TO_20MA 0
#define INDUSTRIAL_ANALOG_OUT_V2_CURRENT_RANGE_0_TO_20MA 1
#define INDUSTRIAL_ANALOG_OUT_V2_CURRENT_RANGE_0_TO_24MA 2

#define INDUSTRIAL_ANALOG_OUT_V2_CHANNEL_LED_CONFIG_OFF 0
#define INDUSTRIAL_ANALOG_OUT_V2_CHANNEL_LED_CONFIG_ON 1
#define INDUSTRIAL_ANALOG_OUT_V2_CHANNEL_LED_CONFIG_SHOW_HEARTBEAT 2
#define INDUSTRIAL_ANALOG_OUT_V2_CHANNEL_LED_CONFIG_SHOW_CHANNEL_STATUS 3

#define INDUSTRIAL_ANALOG_OUT_V2_CHANNEL_LED_STATUS_CONFIG_THRESHOLD 0
#define INDUSTRIAL_ANALOG_OUT_V2_CHANNEL_LED_STATUS_CONFIG_INTENSITY 1

#define INDUSTRIAL_ANALOG_OUT_V2_BOOTLOADER_MODE_BOOTLOADER 0
#define INDUSTRIAL_ANALOG_OUT_V2_BOOTLOADER_MODE_FIRMWARE 1
#define INDUSTRIAL_ANALOG_OUT_V2_BOOTLOADER_MODE_BOOTLOADER_WAIT_FOR_REBOOT 2
#define INDUSTRIAL_ANALOG_OUT_V2_BOOTLOADER_MODE_FIRMWARE_WAIT_FOR_REBOOT 3
#define INDUSTRIAL_ANALOG_OUT_V2_BOOTLOADER_MODE_FIRMWARE_WAIT_FOR_ERASE_AND_REBOOT 4

#define INDUSTRIAL_ANALOG_OUT_V2_BOOTLOADER_STATUS_OK 0
#define INDUSTRIAL_ANALOG_OUT_V2_BOOTLOADER_STATUS_INVALID_MODE 1
#define INDUSTRIAL_ANALOG_OUT_V2_BOOTLOADER_STATUS_NO_CHANGE 2
#define INDUSTRIAL_ANALOG_OUT_V2_BOOTLOADER_STATUS_ENTRY_FUNCTION_NOT_PRESENT 3
#define INDUSTRIAL_ANALOG_OUT_V2_BOOTLOADER_STATUS_DEVICE_IDENTIFIER_INCORRECT 4
#define INDUSTRIAL_ANALOG_OUT_V2_BOOTLOADER_STATUS_CRC_MISMATCH 5

#define INDUSTRIAL_ANALOG_OUT_V2_STATUS_LED_CONFIG_OFF 0
#define INDUSTRIAL_ANALOG_OUT_V2_STATUS_LED_CONFIG_ON 1
#define INDUSTRIAL_ANALOG_OUT_V2_STATUS_LED_CONFIG_SHOW_HEARTBEAT 2
#define INDUSTRIAL_ANALOG_OUT_V2_STATUS_LED_CONFIG_SHOW_STATUS 3

// Function and callback IDs and structs
#define FID_SET_ENABLED 1
#define FID_GET_ENABLED 2
#define FID_SET_VOLTAGE 3
#define FID_GET_VOLTAGE 4
#define FID_SET_CURRENT 5
#define FID_GET_CURRENT 6
#define FID_SET_CONFIGURATION 7
#define FID_GET_CONFIGURATION 8
#define FID_SET_CHANNEL_LED_CONFIG 9
#define FID_GET_CHANNEL_LED_CONFIG 10
#define FID_SET_CHANNEL_LED_STATUS_CONFIG 11
#define FID_GET_CHANNEL_LED_STATUS_CONFIG 12

typedef struct {
	TFPMessageHeader header;
	bool enabled;
} __attribute__((__packed__)) SetEnabled;

typedef struct {
	TFPMessageHeader header;
} __attribute__((__packed__)) GetEnabled;

typedef struct {
	TFPMessageHeader header;
	bool enabled;
} __attribute__((__packed__)) GetEnabled_Response;

typedef struct {
	TFPMessageHeader header;
	uint16_t voltage;
} __attribute__((__packed__)) SetVoltage;

typedef struct {
	TFPMessageHeader header;
} __attribute__((__packed__)) GetVoltage;

typedef struct {
	TFPMessageHeader header;
	uint16_t voltage;
} __attribute__((__packed__)) GetVoltage_Response;

typedef struct {
	TFPMessageHeader header;
	uint16_t current;
} __attribute__((__packed__)) SetCurrent;

typedef struct {
	TFPMessageHeader header;
} __attribute__((__packed__)) GetCurrent;

typedef struct {
	TFPMessageHeader header;
	uint16_t current;
} __attribute__((__packed__)) GetCurrent_Response;

typedef struct {
	TFPMessageHeader header;
	uint8_t voltage_range;
	uint8_t current_range;
} __attribute__((__packed__)) SetConfiguration;

typedef struct {
	TFPMessageHeader header;
} __attribute__((__packed__)) GetConfiguration;

typedef struct {
	TFPMessageHeader header;
	uint8_t voltage_range;
	uint8_t current_range;
} __attribute__((__packed__)) GetConfiguration_Response;

typedef struct {
	TFPMessageHeader header;
	uint8_t channel;
	uint8_t config;
} __attribute__((__packed__)) SetChannelLEDConfig;

typedef struct {
	TFPMessageHeader header;
	uint8_t channel;
} __attribute__((__packed__)) GetChannelLEDConfig;

typedef struct {
	TFPMessageHeader header;
	uint8_t config;
} __attribute__((__packed__)) GetChannelLEDConfig_Response;

typedef struct {
	TFPMessageHeader header;
	uint8_t channel;
	uint16_t min;
	uint16_t max;
	uint8_t config;
} __attribute__((__packed__)) SetChannelLEDStatusConfig;

typedef struct {
	TFPMessageHeader header;
	uint8_t channel;
} __attribute__((__packed__)) GetChannelLEDStatusConfig;

typedef struct {
	TFPMessageHeader header;
	uint16_t min;
	uint16_t max;
	uint8_t config;
} __attribute__((__packed__)) GetChannelLEDStatusConfig_Response;

// Function prototypes
BootloaderHandleMessageResponse set_enabled(const SetEnabled *data);
BootloaderHandleMessageResponse get_enabled(const GetEnabled *data, GetEnabled_Response *response);
BootloaderHandleMessageResponse set_voltage(const SetVoltage *data);
BootloaderHandleMessageResponse get_voltage(const GetVoltage *data, GetVoltage_Response *response);
BootloaderHandleMessageResponse set_current(const SetCurrent *data);
BootloaderHandleMessageResponse get_current(const GetCurrent *data, GetCurrent_Response *response);
BootloaderHandleMessageResponse set_configuration(const SetConfiguration *data);
BootloaderHandleMessageResponse get_configuration(const GetConfiguration *data, GetConfiguration_Response *response);
BootloaderHandleMessageResponse set_channel_led_config(const SetChannelLEDConfig *data);
BootloaderHandleMessageResponse get_channel_led_config(const GetChannelLEDConfig *data, GetChannelLEDConfig_Response *response);
BootloaderHandleMessageResponse set_channel_led_status_config(const SetChannelLEDStatusConfig *data);
BootloaderHandleMessageResponse get_channel_led_status_config(const GetChannelLEDStatusConfig *data, GetChannelLEDStatusConfig_Response *response);

// Callbacks

#define COMMUNICATION_CALLBACK_TICK_WAIT_MS 1
#define COMMUNICATION_CALLBACK_HANDLER_NUM 0
#define COMMUNICATION_CALLBACK_LIST_INIT \

#endif
