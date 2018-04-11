/* industrial-analog-out-v2-bricklet
 * Copyright (C) 2018 Olaf Lüke <olaf@tinkerforge.com>
 *
 * config_dac7760.h: Config for DAC7760 AD converter 
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

#ifndef CONFIG_DAC7760_H
#define CONFIG_DAC7760_H

#include "xmc_gpio.h"
#include "xmc_spi.h"

#define DAC7760_SPI_BAUDRATE         400000
#define DAC7760_USIC_CHANNEL         USIC0_CH0
#define DAC7760_USIC_SPI             XMC_SPI0_CH0

#define DAC7760_RX_FIFO_SIZE         XMC_USIC_CH_FIFO_SIZE_16WORDS
#define DAC7760_RX_FIFO_POINTER      32
#define DAC7760_TX_FIFO_SIZE         XMC_USIC_CH_FIFO_SIZE_16WORDS
#define DAC7760_TX_FIFO_POINTER      48

#define DAC7760_CLOCK_PASSIVE_LEVEL  XMC_SPI_CH_BRG_SHIFT_CLOCK_PASSIVE_LEVEL_0_DELAY_ENABLED;
#define DAC7760_CLOCK_OUTPUT         XMC_SPI_CH_BRG_SHIFT_CLOCK_OUTPUT_SCLK
#define DAC7760_SLAVE                XMC_SPI_CH_SLAVE_SELECT_4

#define DAC7760_SCLK_PORT            XMC_GPIO_PORT0
#define DAC7760_SCLK_PIN             14
#define DAC7760_SCLK_PIN_MODE        (XMC_GPIO_MODE_OUTPUT_PUSH_PULL_ALT7 | P0_14_AF_U0C0_SCLKOUT)

#define DAC7760_SELECT_PORT          XMC_GPIO_PORT0
#define DAC7760_SELECT_PIN           13
#define DAC7760_SELECT_PIN_MODE      (XMC_GPIO_MODE_OUTPUT_PUSH_PULL_ALT6 | P0_13_AF_U0C0_SELO4)

#define DAC7760_MOSI_PORT            XMC_GPIO_PORT2
#define DAC7760_MOSI_PIN             0
#define DAC7760_MOSI_PIN_MODE        (XMC_GPIO_MODE_OUTPUT_PUSH_PULL_ALT6 | P2_0_AF_U0C0_DOUT0)

#define DAC7760_MISO_PORT            XMC_GPIO_PORT0
#define DAC7760_MISO_PIN             15
#define DAC7760_MISO_INPUT           XMC_USIC_CH_INPUT_DX0
#define DAC7760_MISO_SOURCE          0b001 // DX0B

#define DAC7760_LED_PIN              P1_3

#endif