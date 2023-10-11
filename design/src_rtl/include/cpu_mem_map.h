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


`define	IMEM_BASE_ADDR `S4_BASE_START  //h00000000
`define	DMEM_BASE_ADDR `S5_BASE_START  //h00800000

//SPACE for ahb-lite to axi bridge
//`define S1_BASE_START 32'h02000000
//`define S1_BASE_END   32'hdfffffff
//IMEME and DMEM within tile mem
`define S1_BASE_START 32'h00000000
`define S1_BASE_END   32'hdfffffff
//APB
`define S2_BASE_START 32'h01000000
`define S2_BASE_END   32'h01ffffff
//IMEM
`define S4_BASE_START 32'h00000000
`define S4_BASE_END   32'h0007ffff
//DMEM 
`define S5_BASE_START 32'h00800000
`define S5_BASE_END   32'h00ffffff


//apb peripheral address in cpu_sub_system
// Uart
`define PS1_BASE_START 32'h01015000
`define PS1_BASE_END   32'h01015fff
// Timer
`define PS2_BASE_START 32'h01011000
`define PS2_BASE_END   32'h01011fff
// PMU
`define PS3_BASE_START 32'h01016000
`define PS3_BASE_END   32'h01016fff
//GPIO
`define PS4_BASE_START 32'h01019000
`define PS4_BASE_END   32'h01019fff
//STimer
`define PS5_BASE_START 32'h01018000
`define PS5_BASE_END   32'h01018fff
//CLKGEN
`define PS6_BASE_START 32'h01017000
`define PS6_BASE_END   32'h01017fff
//SMPU
`define PS7_BASE_START 32'h0101A000
`define PS7_BASE_END   32'h0101Afff
//NMI_WAKE
`define PS8_BASE_START 32'h10021000
`define PS8_BASE_END   32'h10021fff
//NEW TIMER
`define PS9_BASE_START 32'h10031000
`define PS9_BASE_END   32'h10031fff
