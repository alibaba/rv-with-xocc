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
// FILE NAME       : tb_printf.sv
// AUTHOR          : 
// FUNCTION        : implement printf function in c program
// *****************************************************************************

// PE_0_0_RV_0
`define PE_0_0_RV_0_PRINT_READY  `PE_0_0_RV_0.pad_biu_hready
reg  [31:0] pe_0_0_rv_0_print_addr;
reg  [1:0]  pe_0_0_rv_0_print_trans;
reg         pe_0_0_rv_0_print_write;
wire [31:0] pe_0_0_rv_0_print_wdata;

always @(posedge `PE_0_0_RV_0_AHB.cpu_clk)
begin
    pe_0_0_rv_0_print_trans[1:0] <= `PE_0_0_RV_0_AHB.biu_pad_htrans[1:0];
    pe_0_0_rv_0_print_addr[31:0] <= `PE_0_0_RV_0_AHB.biu_pad_haddr[31:0];
    pe_0_0_rv_0_print_write      <= `PE_0_0_RV_0_AHB.biu_pad_hwrite;
end

assign pe_0_0_rv_0_print_wdata[31:0] = `PE_0_0_RV_0_AHB.biu_pad_hwdata[31:0];

always @(posedge `PE_0_0_RV_0_AHB.cpu_clk)
begin
    if((pe_0_0_rv_0_print_trans[1:0] == 2'b10) &&
       (pe_0_0_rv_0_print_addr[31:0] == 32'hc00001f8) &&
       (pe_0_0_rv_0_print_write))
    begin 
        force `PE_0_0_RV_0_PRINT_READY = 1'b1;
        $write("%c", pe_0_0_rv_0_print_wdata[7:0]);
    end
    else
        release `PE_0_0_RV_0_PRINT_READY;
end

// PE_0_0_RV_1
`define PE_0_0_RV_1_PRINT_READY  `PE_0_0_RV_1.pad_biu_hready
reg  [31:0] pe_0_0_rv_1_print_addr;
reg  [1:0]  pe_0_0_rv_1_print_trans;
reg         pe_0_0_rv_1_print_write;
wire [31:0] pe_0_0_rv_1_print_wdata;

always @(posedge `PE_0_0_RV_1_AHB.cpu_clk)
begin
    pe_0_0_rv_1_print_trans[1:0] <= `PE_0_0_RV_1_AHB.biu_pad_htrans[1:0];
    pe_0_0_rv_1_print_addr[31:0] <= `PE_0_0_RV_1_AHB.biu_pad_haddr[31:0];
    pe_0_0_rv_1_print_write      <= `PE_0_0_RV_1_AHB.biu_pad_hwrite;
end

assign pe_0_0_rv_1_print_wdata[31:0] = `PE_0_0_RV_1_AHB.biu_pad_hwdata[31:0];

always @(posedge `PE_0_0_RV_1_AHB.cpu_clk)
begin
    if((pe_0_0_rv_1_print_trans[1:0] == 2'b10) &&
       (pe_0_0_rv_1_print_addr[31:0] == 32'hc00001f8) &&
       (pe_0_0_rv_1_print_write))
    begin 
        force `PE_0_0_RV_1_PRINT_READY = 1'b1;
        $write("%c", pe_0_0_rv_1_print_wdata[7:0]);
    end
    else
        release `PE_0_0_RV_1_PRINT_READY;
end
