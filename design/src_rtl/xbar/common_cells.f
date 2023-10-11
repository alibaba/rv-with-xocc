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

+incdir+$AXI_COMMON_CELL_PATH/include
+incdir+$AXI_COMMON_CELL_PATH/src
-sverilog
//Level 0
$AXI_COMMON_CELL_PATH/src/binary_to_gray.sv
$AXI_COMMON_CELL_PATH/src/cb_filter_pkg.sv
$AXI_COMMON_CELL_PATH/src/cc_onehot.sv
$AXI_COMMON_CELL_PATH/src/cf_math_pkg.sv
$AXI_COMMON_CELL_PATH/src/clk_int_div.sv
$AXI_COMMON_CELL_PATH/src/delta_counter.sv
$AXI_COMMON_CELL_PATH/src/ecc_pkg.sv
$AXI_COMMON_CELL_PATH/src/edge_propagator_tx.sv
$AXI_COMMON_CELL_PATH/src/exp_backoff.sv
$AXI_COMMON_CELL_PATH/src/fifo_v3.sv
$AXI_COMMON_CELL_PATH/src/gray_to_binary.sv
$AXI_COMMON_CELL_PATH/src/isochronous_4phase_handshake.sv
$AXI_COMMON_CELL_PATH/src/isochronous_spill_register.sv
$AXI_COMMON_CELL_PATH/src/lfsr.sv
$AXI_COMMON_CELL_PATH/src/lfsr_16bit.sv
$AXI_COMMON_CELL_PATH/src/lfsr_8bit.sv
$AXI_COMMON_CELL_PATH/src/mv_filter.sv
$AXI_COMMON_CELL_PATH/src/onehot_to_bin.sv
$AXI_COMMON_CELL_PATH/src/plru_tree.sv
$AXI_COMMON_CELL_PATH/src/popcount.sv
$AXI_COMMON_CELL_PATH/src/rr_arb_tree.sv
$AXI_COMMON_CELL_PATH/src/rstgen_bypass.sv
$AXI_COMMON_CELL_PATH/src/serial_deglitch.sv
$AXI_COMMON_CELL_PATH/src/shift_reg.sv
$AXI_COMMON_CELL_PATH/src/spill_register_flushable.sv
$AXI_COMMON_CELL_PATH/src/stream_demux.sv
$AXI_COMMON_CELL_PATH/src/stream_filter.sv
$AXI_COMMON_CELL_PATH/src/stream_fork.sv
$AXI_COMMON_CELL_PATH/src/stream_intf.sv
$AXI_COMMON_CELL_PATH/src/stream_join.sv
$AXI_COMMON_CELL_PATH/src/stream_mux.sv
$AXI_COMMON_CELL_PATH/src/stream_throttle.sv
$AXI_COMMON_CELL_PATH/src/sub_per_hash.sv
$AXI_COMMON_CELL_PATH/src/sync.sv
$AXI_COMMON_CELL_PATH/src/sync_wedge.sv
$AXI_COMMON_CELL_PATH/src/unread.sv
$AXI_COMMON_CELL_PATH/src/read.sv
$AXI_COMMON_CELL_PATH/src/cdc_reset_ctrlr_pkg.sv
//Level 1
$AXI_COMMON_CELL_PATH/src/cdc_2phase.sv
$AXI_COMMON_CELL_PATH/src/cdc_4phase.sv
$AXI_COMMON_CELL_PATH/src/addr_decode.sv
$AXI_COMMON_CELL_PATH/src/addr_decode_napot.sv
$AXI_COMMON_CELL_PATH/src/cb_filter.sv
$AXI_COMMON_CELL_PATH/src/cdc_fifo_2phase.sv
$AXI_COMMON_CELL_PATH/src/counter.sv
$AXI_COMMON_CELL_PATH/src/ecc_decode.sv
$AXI_COMMON_CELL_PATH/src/ecc_encode.sv
$AXI_COMMON_CELL_PATH/src/edge_detect.sv
$AXI_COMMON_CELL_PATH/src/lzc.sv
$AXI_COMMON_CELL_PATH/src/max_counter.sv
$AXI_COMMON_CELL_PATH/src/rstgen.sv
$AXI_COMMON_CELL_PATH/src/spill_register.sv
$AXI_COMMON_CELL_PATH/src/stream_delay.sv
$AXI_COMMON_CELL_PATH/src/stream_fifo.sv
$AXI_COMMON_CELL_PATH/src/stream_fork_dynamic.sv
$AXI_COMMON_CELL_PATH/src/clk_mux_glitch_free.sv
//Level 2
$AXI_COMMON_CELL_PATH/src/cdc_reset_ctrlr.sv
$AXI_COMMON_CELL_PATH/src/cdc_fifo_gray.sv
$AXI_COMMON_CELL_PATH/src/fall_through_register.sv
$AXI_COMMON_CELL_PATH/src/id_queue.sv
$AXI_COMMON_CELL_PATH/src/stream_to_mem.sv
$AXI_COMMON_CELL_PATH/src/stream_arbiter_flushable.sv
$AXI_COMMON_CELL_PATH/src/stream_fifo_optimal_wrap.sv
$AXI_COMMON_CELL_PATH/src/stream_register.sv
$AXI_COMMON_CELL_PATH/src/stream_xbar.sv
//Level 3
$AXI_COMMON_CELL_PATH/src/cdc_fifo_gray_clearable.sv
$AXI_COMMON_CELL_PATH/src/cdc_2phase_clearable.sv
$AXI_COMMON_CELL_PATH/src/mem_to_banks.sv
$AXI_COMMON_CELL_PATH/src/stream_arbiter.sv
$AXI_COMMON_CELL_PATH/src/stream_omega_net.sv

//Deprecated modules
//Level 0
$AXI_COMMON_CELL_PATH/src/deprecated/clock_divider.sv
$AXI_COMMON_CELL_PATH/src/deprecated/clock_divider_counter.sv
$AXI_COMMON_CELL_PATH/src/deprecated/find_first_one.sv
$AXI_COMMON_CELL_PATH/src/deprecated/generic_LFSR_8bit.sv
$AXI_COMMON_CELL_PATH/src/deprecated/generic_fifo.sv
$AXI_COMMON_CELL_PATH/src/deprecated/generic_fifo_adv.sv
$AXI_COMMON_CELL_PATH/src/deprecated/pulp_sync.sv
$AXI_COMMON_CELL_PATH/src/deprecated/pulp_sync_wedge.sv
$AXI_COMMON_CELL_PATH/src/deprecated/sram.sv
//Level 1
$AXI_COMMON_CELL_PATH/src/deprecated/fifo_v2.sv
$AXI_COMMON_CELL_PATH/src/deprecated/prioarbiter.sv
$AXI_COMMON_CELL_PATH/src/deprecated/rrarbiter.sv
//Level 2
$AXI_COMMON_CELL_PATH/src/deprecated/fifo_v1.sv
//Level 3

//Depend on deprecated modules
$AXI_COMMON_CELL_PATH/src/edge_propagator_ack.sv
$AXI_COMMON_CELL_PATH/src/edge_propagator.sv
$AXI_COMMON_CELL_PATH/src/edge_propagator_rx.sv
