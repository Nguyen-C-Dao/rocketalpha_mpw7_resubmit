// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper1 #(
    parameter BITS = 32
) (
`ifdef USE_POWER_PINS
    inout vdda1,	// User area 1 3.3V supply
    inout vdda2,	// User area 2 3.3V supply
    inout vssa1,	// User area 1 analog ground
    inout vssa2,	// User area 2 analog ground
    inout vccd1,	// User area 1 1.8V supply
    inout vccd2,	// User area 2 1.8v supply
    inout vssd1,	// User area 1 digital ground
    inout vssd2,	// User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);
    wire gpio_0_0;
    wire gpio_0_1;
    wire gpio_0_2;
    wire gpio_0_3;

    wire spi_0_dq_0;
    wire spi_0_dq_1;
    wire spi_0_dq_2;
    wire spi_0_dq_3;

    wire spi_1_dq_0;
    wire spi_1_dq_1;
    wire spi_1_dq_2;
    wire spi_1_dq_3;

    assign io_in[34]  = gpio_0_0;
    assign io_out[34] = gpio_0_0;
    assign io_in[35]  = gpio_0_1;
    assign io_out[35] = gpio_0_1;
    assign io_in[36]  = gpio_0_2;
    assign io_out[36] = gpio_0_2;
    assign io_in[37]  = gpio_0_3;
    assign io_out[37] = gpio_0_3;
    
    assign io_in[21]  = spi_0_dq_0;
    assign io_out[21] = spi_0_dq_0;
    assign io_in[22]  = spi_0_dq_1;
    assign io_out[22] = spi_0_dq_1;
    assign io_in[23]  = spi_0_dq_2;
    assign io_out[23] = spi_0_dq_2;
    assign io_in[24]  = spi_0_dq_3;
    assign io_out[24] = spi_0_dq_3;

    assign io_in[27]  = spi_1_dq_0;
    assign io_out[27] = spi_1_dq_0;
    assign io_in[28]  = spi_1_dq_1;
    assign io_out[28] = spi_1_dq_1;
    assign io_in[29]  = spi_1_dq_2;
    assign io_out[29] = spi_1_dq_2;
    assign io_in[30]  = spi_1_dq_3;
    assign io_out[30] = spi_1_dq_3;
/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/
ChipTop Inst_ChipTop (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
  .io_oeb(io_oeb),
  .jtag_TCK(io_in[15]),              // In
  .jtag_TMS(io_in[16]),             // In
  .jtag_TDI(io_in[17]),             // In
  .jtag_TDO(io_out[18]),            // Out

  // Unconnected or connect to LA pins
  .serial_tl_clock(la_data_out[1]),            // Out
  .serial_tl_bits_in_ready(la_data_out[2]),    // Out
  .serial_tl_bits_in_valid(la_data_in[2]),     // In
  .serial_tl_bits_in_bits(la_data_in[41:10]),  // In 32bits
  .serial_tl_bits_out_ready(la_data_in[3]),    // In
  .serial_tl_bits_out_valid(la_data_out[3]),   // Out
  .serial_tl_bits_out_bits(la_data_out[81:50]), // Out 32bits

  .custom_boot(io_in[11]),      // In
  .clock_clock(wb_clk_i),       // In
  .reset(io_in[12]),            // In

  .gpio_0_0(gpio_0_0),         // InOut
  .gpio_0_1(gpio_0_1),         // InOut
  .gpio_0_2(gpio_0_2),         // InOut
  .gpio_0_3(gpio_0_3),         // InOut

  // SPI 0 - FLASH
  .spi_0_sck(io_out[19]),       // Out
  .spi_0_cs_0(io_out[20]),      // Out
  .spi_0_dq_0(spi_0_dq_0),      // InOut
  .spi_0_dq_1(spi_0_dq_1),      // InOut
  .spi_0_dq_2(spi_0_dq_2),      // InOut
  .spi_0_dq_3(spi_0_dq_3),      // InOut

   // SPI 1 - FLASH
  .spi_1_sck(io_out[25]),       // Out
  .spi_1_cs_0(io_out[26]),      // Out
  .spi_1_dq_0(spi_1_dq_0),      // InOut
  .spi_1_dq_1(spi_1_dq_1),      // InOut
  .spi_1_dq_2(spi_1_dq_2),      // InOut
  .spi_1_dq_3(spi_1_dq_3),      // InOut

  .uart_0_txd(io_out[13]),      // Out
  .uart_0_rxd(io_in[14]),        // In

  .uart_1_txd(io_out[32]),      // Out
  .uart_1_rxd(io_in[33])        // In
);

`ifndef VERBOSE
  `define VERBOSE 0
`endif

endmodule	// user_project_wrapper

`default_nettype wire
