/* 
*Copyright (c) 2021, Alibaba Group;
*Licensed under the Apache License, Version 2.0 (the "License");
*you may not use this file except in compliance with the License.
*You may obtain a copy of the License at

*   http://www.apache.org/licenses/LICENSE-2.0

*Unless required by applicable law or agreed to in writing, software
*distributed under the License is distributed on an "AS IS" BASIS,
*WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*See the License for the specific language governing permissions and
*limitations under the License.
*/

// *****************************************************************************
// FILE NAME       : tb_top.sv
// AUTHOR          : Linyong Huang
// FUNCTION        : top testbench
// *****************************************************************************
`timescale 1ps/1ps
`include "tb_define.h"

module tb_top();

// Reset Gen
`include "tb_reset.sv"

// Clock Gen
`include "tb_clock.sv"

// Mem Init
`include "tb_mem_init.sv"

// User Function
`include "tb_func.sv"

// DUT Init
soc_top dut (
	.rv_0_clk(clk),
	.rv_0_rst_addr(32'h2000000),
	.rv_0_rstn(sys_rstn),
	.dsa_0_clk(clk),
	.dsa_0_rstn(sys_rstn),
	.dsa_1_clk(clk),
	.dsa_1_rstn(sys_rstn),
	.dsa_2_clk(clk),
	.dsa_2_rstn(sys_rstn),
	.mem_sub_sys_clk(clk),
	.mem_sub_sys_rstn(sys_rstn),
	.rv_1_clk(clk),
	.rv_1_rst_addr(32'h2100000),
	.rv_1_rstn(sys_rstn),
	.rv_2_clk(clk),
	.rv_2_rst_addr(32'h2200000),
    .rv_2_rstn(sys_rstn)
);

// Finish Condition Control 
`include "tb_finish_mnt.sv"

endmodule
