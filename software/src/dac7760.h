/* industrial-analog-out-v2-bricklet
 * Copyright (C) 2018 Olaf Lüke <olaf@tinkerforge.com>
 *
 * dac7760.h: Driver for DAC7760 DA converter 
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

#ifndef DAC7760_H
#define DAC7760_H

#include "bricklib2/hal/spi_fifo/spi_fifo.h"

#define DAC7760_MIN 0
#define DAC7760_MAX 4095

typedef struct {
	uint16_t voltage;
	uint16_t current;

	uint16_t value;
	bool value_update;

	bool crc_enable;
	bool config_update;
	bool control_update;

	uint8_t current_range;
	uint8_t voltage_range;
	bool enabled;

	uint16_t write_length;
	SPIFifo spi_fifo;
} DAC7760;

extern DAC7760 dac7760;

void dac7760_init(void);
void dac7760_tick(void);

#define DAC7760_REG_NOP            0x00
#define DAC7760_REG_WRITE_DAC      0x01
#define DAC7760_REG_READ           0x02
#define DAC7760_REG_WRITE_CONTROL  0x55
#define DAC7760_REG_WRITE_RESET    0x56
#define DAC7760_REG_WRITE_CONFIG   0x57
#define DAC7760_REG_WRITE_CAL_GAIN 0x58
#define DAC7760_REG_WRITE_CAL_ZERO 0x59
#define DAC7760_REG_RESET_WATCHDOG 0x95

#endif