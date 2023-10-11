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

// Ref Model
`define NOISA

// Path Define
// Top 
`define TB                      tb_top
`define DUT                     `TB.dut
`define SHELL                   `DUT.shell
`define PCI_EP                  `SHELL.qdma_pcie_sys.qdma_0.inst

// PE_0_0
`define PE_0_0 `DUT
`define PE_0_0_SPM `PE_0_0.x_mem_sub_sys_top
`define PE_0_0_RV_0 `PE_0_0.x_rv_cluster_top.x_rv_0_wrapper
`define PE_0_0_RV_0_AHB `PE_0_0_RV_0.x_rv_0_cpu_sub_system_ahb
`define PE_0_0_RV_1 `PE_0_0.x_rv_cluster_top.x_rv_1_wrapper
`define PE_0_0_RV_1_AHB `PE_0_0_RV_1.x_rv_1_cpu_sub_system_ahb
`define PE_0_0_RV_2 `PE_0_0.x_rv_cluster_top.x_rv_2_wrapper
`define PE_0_0_RV_2_AHB `PE_0_0_RV_2.x_rv_2_cpu_sub_system_ahb

// Used in "tb_finish_mnt.sv"
`define MAX_RUN_TIME 8000000000
`define LAST_CYCLE 500000
`define PASS_FLAG	    32'hffffffff
`define FAIL_FLAG	    32'hdeaddead
`define MAILBOX_ADDR    32'h0230fff8

//Clock & Reset
`define RESET_TIME 10000
`define CLK_PERIOD 10000

