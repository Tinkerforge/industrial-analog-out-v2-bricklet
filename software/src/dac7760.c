/* industrial-analog-out-v2-bricklet
 * Copyright (C) 2018 Olaf Lüke <olaf@tinkerforge.com>
 *
 * dac7760.c: Driver for DAC7760 DA converter 
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

#include "dac7760.h"

#include "configs/config_dac7760.h"
#include "bricklib2/hal/spi_fifo/spi_fifo.h"
#include "bricklib2/utility/crc8.h"
#include "bricklib2/logging/logging.h"
#include "communication.h"

DAC7760 dac7760;

void dac7760_init_spi(void) {
	dac7760.spi_fifo.baudrate = DAC7760_SPI_BAUDRATE;
	dac7760.spi_fifo.channel = DAC7760_USIC_SPI;

	dac7760.spi_fifo.rx_fifo_size = DAC7760_RX_FIFO_SIZE;
	dac7760.spi_fifo.rx_fifo_pointer = DAC7760_RX_FIFO_POINTER;
	dac7760.spi_fifo.tx_fifo_size = DAC7760_TX_FIFO_SIZE;
	dac7760.spi_fifo.tx_fifo_pointer = DAC7760_TX_FIFO_POINTER;

	dac7760.spi_fifo.clock_passive_level = DAC7760_CLOCK_PASSIVE_LEVEL;
	dac7760.spi_fifo.clock_output = DAC7760_CLOCK_OUTPUT;
	dac7760.spi_fifo.slave = DAC7760_SLAVE;

	dac7760.spi_fifo.sclk_port = DAC7760_SCLK_PORT;
	dac7760.spi_fifo.sclk_pin = DAC7760_SCLK_PIN;
	dac7760.spi_fifo.sclk_pin_mode = DAC7760_SCLK_PIN_MODE;

	dac7760.spi_fifo.select_port = DAC7760_SELECT_PORT;
	dac7760.spi_fifo.select_pin = DAC7760_SELECT_PIN;
	dac7760.spi_fifo.select_pin_mode = DAC7760_SELECT_PIN_MODE;

	dac7760.spi_fifo.mosi_port = DAC7760_MOSI_PORT;
	dac7760.spi_fifo.mosi_pin = DAC7760_MOSI_PIN;
	dac7760.spi_fifo.mosi_pin_mode = DAC7760_MOSI_PIN_MODE;

	dac7760.spi_fifo.miso_port = DAC7760_MISO_PORT;
	dac7760.spi_fifo.miso_pin = DAC7760_MISO_PIN;
	dac7760.spi_fifo.miso_input = DAC7760_MISO_INPUT;
	dac7760.spi_fifo.miso_source = DAC7760_MISO_SOURCE;

	spi_fifo_init(&dac7760.spi_fifo);
}

void dac7760_init(void) {
	memset(&dac7760, 0, sizeof(DAC7760));

	dac7760_init_spi();

	dac7760.value = 0;
	dac7760.enabled = false;
	dac7760.voltage_range = INDUSTRIAL_ANALOG_OUT_V2_VOLTAGE_RANGE_0_TO_10V;
	dac7760.current_range = INDUSTRIAL_ANALOG_OUT_V2_CURRENT_RANGE_4_TO_20MA;

	dac7760.value_update = true;
	dac7760.config_update = true;
	dac7760.control_update = true;

	dac7760.crc_enable = true;
	dac7760.write_length = 0;
}

void dac7760_write_register(const uint8_t reg, const uint16_t data) {
	uint8_t write_data[4] = {reg, data >> 8, data & 0xFF};
	write_data[3] = crc8(write_data, 3);
	spi_fifo_transceive(&dac7760.spi_fifo, 4, write_data);
	dac7760.write_length = 4;
}

void dac7760_tick(void) {
	SPIFifoState state = spi_fifo_next_state(&dac7760.spi_fifo);

	if(state & SPI_FIFO_STATE_ERROR) {
		loge("DAC7760 SPI error: %d (%d)\n\r", state, dac7760.spi_fifo.spi_status);
		dac7760_init_spi();
	} else if((state == SPI_FIFO_STATE_IDLE) | (state & SPI_FIFO_STATE_READY)) {
		if(dac7760.write_length == 0) {
			if(dac7760.crc_enable) {
				// Enable CRC and DUAL OUT (without sending CRC as fourth byte)
				uint8_t data[3] = {DAC7760_REG_WRITE_CONFIG, 1 << 0, 1 << 3};
				spi_fifo_transceive(&dac7760.spi_fifo, 3, data);
				dac7760.write_length = 3;
				dac7760.crc_enable = false;
				return;
			}

			if(dac7760.config_update) {
				// Enable DUAL OUTEN, CRC and set IOUT RANGE
				const uint16_t value = (1 << 3) | (1 << 8) | ((dac7760.current_range+1) << 9);
				dac7760_write_register(DAC7760_REG_WRITE_CONFIG, value);
				dac7760.config_update = false;
				return;
			}

			if(dac7760.control_update) {
				// Enable/Disable output and set VOUT RANGE
				const uint16_t value_control = (dac7760.enabled ? (1 << 12) : 0) | dac7760.voltage_range;
				dac7760_write_register(DAC7760_REG_WRITE_CONTROL, value_control);
				dac7760.control_update = false;
				return;
			}

			if(dac7760.value_update) {
				dac7760_write_register(DAC7760_REG_WRITE_DAC, dac7760.value << 4);
				dac7760.value_update = false;
				return;
			}
		} else {
			uint8_t data[16];
			uint16_t length = spi_fifo_read_fifo(&dac7760.spi_fifo, data, 16);
			if(length != dac7760.write_length) {
				loge("DAC7760 unexpected write length: %d (length) != %d (expected length)\n\r", length, dac7760.write_length);
				dac7760_init_spi();
				dac7760.value_update = true;
			}

			dac7760.write_length = 0;
		}
	}
}