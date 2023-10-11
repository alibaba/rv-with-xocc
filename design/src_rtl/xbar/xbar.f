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

-sverilog
+incdir+$AXI_COMMON_CELL_PATH/include
+incdir+$AXI_PATH/include
+incdir+$AXI_PATH/src
+define+VCS
-f $AXI_PATH/common_cells.f
$AXI_PATH/src/axi_pkg.sv
$AXI_PATH/src/axi_intf.sv
$AXI_PATH/src/axi_atop_filter.sv
$AXI_PATH/src/axi_burst_splitter.sv
$AXI_PATH/src/axi_bus_compare.sv
$AXI_PATH/src/axi_cdc_dst.sv
$AXI_PATH/src/axi_cdc_src.sv
$AXI_PATH/src/axi_cut.sv
$AXI_PATH/src/axi_delayer.sv
$AXI_PATH/src/axi_demux.sv
$AXI_PATH/src/axi_dw_downsizer.sv
$AXI_PATH/src/axi_dw_upsizer.sv
$AXI_PATH/src/axi_fifo.sv
$AXI_PATH/src/axi_id_remap.sv
$AXI_PATH/src/axi_id_prepend.sv
$AXI_PATH/src/axi_isolate.sv
$AXI_PATH/src/axi_join.sv
$AXI_PATH/src/axi_modify_address.sv
$AXI_PATH/src/axi_mux.sv
$AXI_PATH/src/axi_rw_join.sv
$AXI_PATH/src/axi_rw_split.sv
$AXI_PATH/src/axi_serializer.sv
$AXI_PATH/src/axi_slave_compare.sv
$AXI_PATH/src/axi_throttle.sv
$AXI_PATH/src/axi_to_mem.sv
$AXI_PATH/src/axi_cdc.sv
$AXI_PATH/src/axi_err_slv.sv
$AXI_PATH/src/axi_from_mem.sv
$AXI_PATH/src/axi_dw_converter.sv
$AXI_PATH/src/axi_id_serialize.sv
$AXI_PATH/src/axi_lfsr.sv
$AXI_PATH/src/axi_multicut.sv
$AXI_PATH/src/axi_to_mem_banked.sv
$AXI_PATH/src/axi_to_mem_interleaved.sv
$AXI_PATH/src/axi_to_mem_split.sv
$AXI_PATH/src/axi_iw_converter.sv
$AXI_PATH/src/axi_xbar.sv
$AXI_PATH/src/axi_xp.sv
$AXI_PATH/src/axi_xbar_top.sv
$AXI_PATH/xbar_top.sv
$AXI_PATH/xbar_top_wrapper.v
