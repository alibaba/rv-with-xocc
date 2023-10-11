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

`include "axi/typedef.svh"
`include "axi/assign.svh"
`include "axi/xbar_define.h"

module xbar_top(
  input             M00_AXI_aclk,
  input             M00_AXI_aresetn,
  input             M00_AXI_arready, 
  input             M00_AXI_awready, 
  input   [`AXI_SLAVE_ID_WIDTH-1   :0]  M00_AXI_bid,
  input   [1   :0]  M00_AXI_bresp,
  input             M00_AXI_bvalid, 
  input   [1023:0]  M00_AXI_rdata,  
  input   [`AXI_SLAVE_ID_WIDTH-1   :0]  M00_AXI_rid,    
  input             M00_AXI_rlast,  
  input   [1   :0]  M00_AXI_rresp,  
  input             M00_AXI_rvalid, 
  input             M00_AXI_wready, 
  output  [31  :0]  M00_AXI_araddr, 
  output  [1   :0]  M00_AXI_arburst, 
  output  [3   :0]  M00_AXI_arcache, 
  output  [`AXI_SLAVE_ID_WIDTH-1   :0]  M00_AXI_arid,   
  output  [7   :0]  M00_AXI_arlen,  
  output  [0   :0]  M00_AXI_arlock, 
  output  [2   :0]  M00_AXI_arprot, 
  output  [3   :0]  M00_AXI_arqos,  
  output  [2   :0]  M00_AXI_arsize, 
  output            M00_AXI_arvalid, 
  output  [31  :0]  M00_AXI_awaddr, 
  output  [1   :0]  M00_AXI_awburst, 
  output  [3   :0]  M00_AXI_awcache, 
  output  [`AXI_SLAVE_ID_WIDTH-1   :0]  M00_AXI_awid,   
  output  [7   :0]  M00_AXI_awlen,  
  output  [0   :0]  M00_AXI_awlock, 
  output  [2   :0]  M00_AXI_awprot, 
  output  [3   :0]  M00_AXI_awqos,  
  output  [2   :0]  M00_AXI_awsize, 
  output            M00_AXI_awvalid, 
  output            M00_AXI_bready, 
  output            M00_AXI_rready, 
  output  [1023:0]  M00_AXI_wdata,  
  output            M00_AXI_wlast,  
  output  [127 :0]  M00_AXI_wstrb,  
  output            M00_AXI_wvalid,
  input             M01_AXI_aclk,
  input             M01_AXI_aresetn,
  input             M01_AXI_arready, 
  input             M01_AXI_awready, 
  input   [`AXI_SLAVE_ID_WIDTH-1   :0]  M01_AXI_bid,
  input   [1   :0]  M01_AXI_bresp,
  input             M01_AXI_bvalid, 
  input   [1023:0]  M01_AXI_rdata,  
  input   [`AXI_SLAVE_ID_WIDTH-1   :0]  M01_AXI_rid,    
  input             M01_AXI_rlast,  
  input   [1   :0]  M01_AXI_rresp,  
  input             M01_AXI_rvalid, 
  input             M01_AXI_wready, 
  output  [31  :0]  M01_AXI_araddr, 
  output  [1   :0]  M01_AXI_arburst, 
  output  [3   :0]  M01_AXI_arcache, 
  output  [`AXI_SLAVE_ID_WIDTH-1   :0]  M01_AXI_arid,   
  output  [7   :0]  M01_AXI_arlen,  
  output  [0   :0]  M01_AXI_arlock, 
  output  [2   :0]  M01_AXI_arprot, 
  output  [3   :0]  M01_AXI_arqos,  
  output  [2   :0]  M01_AXI_arsize, 
  output            M01_AXI_arvalid, 
  output  [31  :0]  M01_AXI_awaddr, 
  output  [1   :0]  M01_AXI_awburst, 
  output  [3   :0]  M01_AXI_awcache, 
  output  [`AXI_SLAVE_ID_WIDTH-1   :0]  M01_AXI_awid,   
  output  [7   :0]  M01_AXI_awlen,  
  output  [0   :0]  M01_AXI_awlock, 
  output  [2   :0]  M01_AXI_awprot, 
  output  [3   :0]  M01_AXI_awqos,  
  output  [2   :0]  M01_AXI_awsize, 
  output            M01_AXI_awvalid, 
  output            M01_AXI_bready, 
  output            M01_AXI_rready, 
  output  [1023:0]  M01_AXI_wdata,  
  output            M01_AXI_wlast,  
  output  [127 :0]  M01_AXI_wstrb,  
  output            M01_AXI_wvalid,
  input             M02_AXI_aclk,
  input             M02_AXI_aresetn,
  input             M02_AXI_arready, 
  input             M02_AXI_awready, 
  input   [`AXI_SLAVE_ID_WIDTH-1   :0]  M02_AXI_bid,
  input   [1   :0]  M02_AXI_bresp,
  input             M02_AXI_bvalid, 
  input   [1023:0]  M02_AXI_rdata,  
  input   [`AXI_SLAVE_ID_WIDTH-1   :0]  M02_AXI_rid,    
  input             M02_AXI_rlast,  
  input   [1   :0]  M02_AXI_rresp,  
  input             M02_AXI_rvalid, 
  input             M02_AXI_wready, 
  output  [31  :0]  M02_AXI_araddr, 
  output  [1   :0]  M02_AXI_arburst, 
  output  [3   :0]  M02_AXI_arcache, 
  output  [`AXI_SLAVE_ID_WIDTH-1   :0]  M02_AXI_arid,   
  output  [7   :0]  M02_AXI_arlen,  
  output  [0   :0]  M02_AXI_arlock, 
  output  [2   :0]  M02_AXI_arprot, 
  output  [3   :0]  M02_AXI_arqos,  
  output  [2   :0]  M02_AXI_arsize, 
  output            M02_AXI_arvalid, 
  output  [31  :0]  M02_AXI_awaddr, 
  output  [1   :0]  M02_AXI_awburst, 
  output  [3   :0]  M02_AXI_awcache, 
  output  [`AXI_SLAVE_ID_WIDTH-1   :0]  M02_AXI_awid,   
  output  [7   :0]  M02_AXI_awlen,  
  output  [0   :0]  M02_AXI_awlock, 
  output  [2   :0]  M02_AXI_awprot, 
  output  [3   :0]  M02_AXI_awqos,  
  output  [2   :0]  M02_AXI_awsize, 
  output            M02_AXI_awvalid, 
  output            M02_AXI_bready, 
  output            M02_AXI_rready, 
  output  [1023:0]  M02_AXI_wdata,  
  output            M02_AXI_wlast,  
  output  [127 :0]  M02_AXI_wstrb,  
  output            M02_AXI_wvalid,
  input             M03_AXI_aclk,
  input             M03_AXI_aresetn,
  input             M03_AXI_arready, 
  input             M03_AXI_awready, 
  input   [`AXI_SLAVE_ID_WIDTH-1   :0]  M03_AXI_bid,
  input   [1   :0]  M03_AXI_bresp,
  input             M03_AXI_bvalid, 
  input   [1023:0]  M03_AXI_rdata,  
  input   [`AXI_SLAVE_ID_WIDTH-1   :0]  M03_AXI_rid,    
  input             M03_AXI_rlast,  
  input   [1   :0]  M03_AXI_rresp,  
  input             M03_AXI_rvalid, 
  input             M03_AXI_wready, 
  output  [31  :0]  M03_AXI_araddr, 
  output  [1   :0]  M03_AXI_arburst, 
  output  [3   :0]  M03_AXI_arcache, 
  output  [`AXI_SLAVE_ID_WIDTH-1   :0]  M03_AXI_arid,   
  output  [7   :0]  M03_AXI_arlen,  
  output  [0   :0]  M03_AXI_arlock, 
  output  [2   :0]  M03_AXI_arprot, 
  output  [3   :0]  M03_AXI_arqos,  
  output  [2   :0]  M03_AXI_arsize, 
  output            M03_AXI_arvalid, 
  output  [31  :0]  M03_AXI_awaddr, 
  output  [1   :0]  M03_AXI_awburst, 
  output  [3   :0]  M03_AXI_awcache, 
  output  [`AXI_SLAVE_ID_WIDTH-1   :0]  M03_AXI_awid,   
  output  [7   :0]  M03_AXI_awlen,  
  output  [0   :0]  M03_AXI_awlock, 
  output  [2   :0]  M03_AXI_awprot, 
  output  [3   :0]  M03_AXI_awqos,  
  output  [2   :0]  M03_AXI_awsize, 
  output            M03_AXI_awvalid, 
  output            M03_AXI_bready, 
  output            M03_AXI_rready, 
  output  [1023:0]  M03_AXI_wdata,  
  output            M03_AXI_wlast,  
  output  [127 :0]  M03_AXI_wstrb,  
  output            M03_AXI_wvalid,
  input             S00_AXI_aclk,   
  input   [31  :0]  S00_AXI_araddr, 
  input   [1   :0]  S00_AXI_arburst, 
  input   [3   :0]  S00_AXI_arcache, 
  input             S00_AXI_aresetn, 
  input   [`AXI_MASTER_ID_WIDTH-1   :0]  S00_AXI_arid,   
  input   [7   :0]  S00_AXI_arlen,  
  input   [0   :0]  S00_AXI_arlock, 
  input   [2   :0]  S00_AXI_arprot, 
  input   [3   :0]  S00_AXI_arqos,  
  input   [2   :0]  S00_AXI_arsize, 
  input             S00_AXI_arvalid, 
  input   [31  :0]  S00_AXI_awaddr, 
  input   [1   :0]  S00_AXI_awburst, 
  input   [3   :0]  S00_AXI_awcache, 
  input   [`AXI_MASTER_ID_WIDTH-1   :0]  S00_AXI_awid,   
  input   [7   :0]  S00_AXI_awlen,  
  input   [0   :0]  S00_AXI_awlock, 
  input   [2   :0]  S00_AXI_awprot, 
  input   [3   :0]  S00_AXI_awqos,  
  input   [2   :0]  S00_AXI_awsize, 
  input             S00_AXI_awvalid, 
  input             S00_AXI_bready, 
  input             S00_AXI_rready, 
  input   [31  :0]  S00_AXI_wdata,  
  input             S00_AXI_wlast,  
  input   [3   :0]  S00_AXI_wstrb,  
  input             S00_AXI_wvalid, 
  output            S00_AXI_arready, 
  output            S00_AXI_awready, 
  output  [`AXI_MASTER_ID_WIDTH-1   :0]  S00_AXI_bid,    
  output  [1   :0]  S00_AXI_bresp,  
  output            S00_AXI_bvalid, 
  output  [31  :0]  S00_AXI_rdata,  
  output  [`AXI_MASTER_ID_WIDTH-1   :0]  S00_AXI_rid,    
  output            S00_AXI_rlast,  
  output  [1   :0]  S00_AXI_rresp,  
  output            S00_AXI_rvalid, 
  output            S00_AXI_wready,
  input             S01_AXI_aclk,   
  input   [31  :0]  S01_AXI_araddr, 
  input   [1   :0]  S01_AXI_arburst, 
  input   [3   :0]  S01_AXI_arcache, 
  input             S01_AXI_aresetn, 
  input   [`AXI_MASTER_ID_WIDTH-1   :0]  S01_AXI_arid,   
  input   [7   :0]  S01_AXI_arlen,  
  input   [0   :0]  S01_AXI_arlock, 
  input   [2   :0]  S01_AXI_arprot, 
  input   [3   :0]  S01_AXI_arqos,  
  input   [2   :0]  S01_AXI_arsize, 
  input             S01_AXI_arvalid, 
  input   [31  :0]  S01_AXI_awaddr, 
  input   [1   :0]  S01_AXI_awburst, 
  input   [3   :0]  S01_AXI_awcache, 
  input   [`AXI_MASTER_ID_WIDTH-1   :0]  S01_AXI_awid,   
  input   [7   :0]  S01_AXI_awlen,  
  input   [0   :0]  S01_AXI_awlock, 
  input   [2   :0]  S01_AXI_awprot, 
  input   [3   :0]  S01_AXI_awqos,  
  input   [2   :0]  S01_AXI_awsize, 
  input             S01_AXI_awvalid, 
  input             S01_AXI_bready, 
  input             S01_AXI_rready, 
  input   [31  :0]  S01_AXI_wdata,  
  input             S01_AXI_wlast,  
  input   [3   :0]  S01_AXI_wstrb,  
  input             S01_AXI_wvalid, 
  output            S01_AXI_arready, 
  output            S01_AXI_awready, 
  output  [`AXI_MASTER_ID_WIDTH-1   :0]  S01_AXI_bid,    
  output  [1   :0]  S01_AXI_bresp,  
  output            S01_AXI_bvalid, 
  output  [31  :0]  S01_AXI_rdata,  
  output  [`AXI_MASTER_ID_WIDTH-1   :0]  S01_AXI_rid,    
  output            S01_AXI_rlast,  
  output  [1   :0]  S01_AXI_rresp,  
  output            S01_AXI_rvalid, 
  output            S01_AXI_wready,
  input             S02_AXI_aclk,   
  input   [31  :0]  S02_AXI_araddr, 
  input   [1   :0]  S02_AXI_arburst, 
  input   [3   :0]  S02_AXI_arcache, 
  input             S02_AXI_aresetn, 
  input   [`AXI_MASTER_ID_WIDTH-1   :0]  S02_AXI_arid,   
  input   [7   :0]  S02_AXI_arlen,  
  input   [0   :0]  S02_AXI_arlock, 
  input   [2   :0]  S02_AXI_arprot, 
  input   [3   :0]  S02_AXI_arqos,  
  input   [2   :0]  S02_AXI_arsize, 
  input             S02_AXI_arvalid, 
  input   [31  :0]  S02_AXI_awaddr, 
  input   [1   :0]  S02_AXI_awburst, 
  input   [3   :0]  S02_AXI_awcache, 
  input   [`AXI_MASTER_ID_WIDTH-1   :0]  S02_AXI_awid,   
  input   [7   :0]  S02_AXI_awlen,  
  input   [0   :0]  S02_AXI_awlock, 
  input   [2   :0]  S02_AXI_awprot, 
  input   [3   :0]  S02_AXI_awqos,  
  input   [2   :0]  S02_AXI_awsize, 
  input             S02_AXI_awvalid, 
  input             S02_AXI_bready, 
  input             S02_AXI_rready, 
  input   [31  :0]  S02_AXI_wdata,  
  input             S02_AXI_wlast,  
  input   [3   :0]  S02_AXI_wstrb,  
  input             S02_AXI_wvalid, 
  output            S02_AXI_arready, 
  output            S02_AXI_awready, 
  output  [`AXI_MASTER_ID_WIDTH-1   :0]  S02_AXI_bid,    
  output  [1   :0]  S02_AXI_bresp,  
  output            S02_AXI_bvalid, 
  output  [31  :0]  S02_AXI_rdata,  
  output  [`AXI_MASTER_ID_WIDTH-1   :0]  S02_AXI_rid,    
  output            S02_AXI_rlast,  
  output  [1   :0]  S02_AXI_rresp,  
  output            S02_AXI_rvalid, 
  output            S02_AXI_wready,
  input             S03_AXI_aclk,   
  input   [31  :0]  S03_AXI_araddr, 
  input   [1   :0]  S03_AXI_arburst, 
  input   [3   :0]  S03_AXI_arcache, 
  input             S03_AXI_aresetn, 
  input   [`AXI_MASTER_ID_WIDTH-1   :0]  S03_AXI_arid,   
  input   [7   :0]  S03_AXI_arlen,  
  input   [0   :0]  S03_AXI_arlock, 
  input   [2   :0]  S03_AXI_arprot, 
  input   [3   :0]  S03_AXI_arqos,  
  input   [2   :0]  S03_AXI_arsize, 
  input             S03_AXI_arvalid, 
  input   [31  :0]  S03_AXI_awaddr, 
  input   [1   :0]  S03_AXI_awburst, 
  input   [3   :0]  S03_AXI_awcache, 
  input   [`AXI_MASTER_ID_WIDTH-1   :0]  S03_AXI_awid,   
  input   [7   :0]  S03_AXI_awlen,  
  input   [0   :0]  S03_AXI_awlock, 
  input   [2   :0]  S03_AXI_awprot, 
  input   [3   :0]  S03_AXI_awqos,  
  input   [2   :0]  S03_AXI_awsize, 
  input             S03_AXI_awvalid, 
  input             S03_AXI_bready, 
  input             S03_AXI_rready, 
  input   [1023  :0]  S03_AXI_wdata,  
  input             S03_AXI_wlast,  
  input   [127   :0]  S03_AXI_wstrb,  
  input             S03_AXI_wvalid, 
  output            S03_AXI_arready, 
  output            S03_AXI_awready, 
  output  [`AXI_MASTER_ID_WIDTH-1   :0]  S03_AXI_bid,    
  output  [1   :0]  S03_AXI_bresp,  
  output            S03_AXI_bvalid, 
  output  [1023  :0]  S03_AXI_rdata,  
  output  [`AXI_MASTER_ID_WIDTH-1   :0]  S03_AXI_rid,    
  output            S03_AXI_rlast,  
  output  [1   :0]  S03_AXI_rresp,  
  output            S03_AXI_rvalid, 
  output            S03_AXI_wready,
  input             S04_AXI_aclk,   
  input   [31  :0]  S04_AXI_araddr, 
  input   [1   :0]  S04_AXI_arburst, 
  input   [3   :0]  S04_AXI_arcache, 
  input             S04_AXI_aresetn, 
  input   [`AXI_MASTER_ID_WIDTH-1   :0]  S04_AXI_arid,   
  input   [7   :0]  S04_AXI_arlen,  
  input   [0   :0]  S04_AXI_arlock, 
  input   [2   :0]  S04_AXI_arprot, 
  input   [3   :0]  S04_AXI_arqos,  
  input   [2   :0]  S04_AXI_arsize, 
  input             S04_AXI_arvalid, 
  input   [31  :0]  S04_AXI_awaddr, 
  input   [1   :0]  S04_AXI_awburst, 
  input   [3   :0]  S04_AXI_awcache, 
  input   [`AXI_MASTER_ID_WIDTH-1   :0]  S04_AXI_awid,   
  input   [7   :0]  S04_AXI_awlen,  
  input   [0   :0]  S04_AXI_awlock, 
  input   [2   :0]  S04_AXI_awprot, 
  input   [3   :0]  S04_AXI_awqos,  
  input   [2   :0]  S04_AXI_awsize, 
  input             S04_AXI_awvalid, 
  input             S04_AXI_bready, 
  input             S04_AXI_rready, 
  input   [1023  :0]  S04_AXI_wdata,  
  input             S04_AXI_wlast,  
  input   [127   :0]  S04_AXI_wstrb,  
  input             S04_AXI_wvalid, 
  output            S04_AXI_arready, 
  output            S04_AXI_awready, 
  output  [`AXI_MASTER_ID_WIDTH-1   :0]  S04_AXI_bid,    
  output  [1   :0]  S04_AXI_bresp,  
  output            S04_AXI_bvalid, 
  output  [1023  :0]  S04_AXI_rdata,  
  output  [`AXI_MASTER_ID_WIDTH-1   :0]  S04_AXI_rid,    
  output            S04_AXI_rlast,  
  output  [1   :0]  S04_AXI_rresp,  
  output            S04_AXI_rvalid, 
  output            S04_AXI_wready,
  input             S05_AXI_aclk,   
  input   [31  :0]  S05_AXI_araddr, 
  input   [1   :0]  S05_AXI_arburst, 
  input   [3   :0]  S05_AXI_arcache, 
  input             S05_AXI_aresetn, 
  input   [`AXI_MASTER_ID_WIDTH-1   :0]  S05_AXI_arid,   
  input   [7   :0]  S05_AXI_arlen,  
  input   [0   :0]  S05_AXI_arlock, 
  input   [2   :0]  S05_AXI_arprot, 
  input   [3   :0]  S05_AXI_arqos,  
  input   [2   :0]  S05_AXI_arsize, 
  input             S05_AXI_arvalid, 
  input   [31  :0]  S05_AXI_awaddr, 
  input   [1   :0]  S05_AXI_awburst, 
  input   [3   :0]  S05_AXI_awcache, 
  input   [`AXI_MASTER_ID_WIDTH-1   :0]  S05_AXI_awid,   
  input   [7   :0]  S05_AXI_awlen,  
  input   [0   :0]  S05_AXI_awlock, 
  input   [2   :0]  S05_AXI_awprot, 
  input   [3   :0]  S05_AXI_awqos,  
  input   [2   :0]  S05_AXI_awsize, 
  input             S05_AXI_awvalid, 
  input             S05_AXI_bready, 
  input             S05_AXI_rready, 
  input   [1023  :0]  S05_AXI_wdata,  
  input             S05_AXI_wlast,  
  input   [127   :0]  S05_AXI_wstrb,  
  input             S05_AXI_wvalid, 
  output            S05_AXI_arready, 
  output            S05_AXI_awready, 
  output  [`AXI_MASTER_ID_WIDTH-1   :0]  S05_AXI_bid,    
  output  [1   :0]  S05_AXI_bresp,  
  output            S05_AXI_bvalid, 
  output  [1023  :0]  S05_AXI_rdata,  
  output  [`AXI_MASTER_ID_WIDTH-1   :0]  S05_AXI_rid,    
  output            S05_AXI_rlast,  
  output  [1   :0]  S05_AXI_rresp,  
  output            S05_AXI_rvalid, 
  output            S05_AXI_wready
);

  parameter int unsigned NumMasters        = 6;
  parameter int unsigned NumSlaves         = 4;
  parameter int unsigned AxiIdWidthMasters = `AXI_MASTER_ID_WIDTH;
  parameter int unsigned AxiIdUsed         = `AXI_MASTER_ID_WIDTH;
  parameter int unsigned AxiDataWidth      = `AXI_XBAR_DATA_WIDTH;
  parameter int unsigned Pipeline          = 32'd1;
  parameter bit          EnAtop            = 1'b0;
  parameter bit EnExcl                     = 1'b0;   
  parameter bit UniqueIds                  = 1'b0;    

  // AXI configuration which is automatically derived.
  localparam int unsigned AxiIdWidthSlaves =  AxiIdWidthMasters + $clog2(NumMasters);
  localparam int unsigned AxiAddrWidth     =  `AXI_XBAR_ADDR_WIDTH;
  localparam int unsigned AxiStrbWidth     =  AxiDataWidth / 8;
  localparam int unsigned AxiUserWidth     =  1;

  localparam axi_pkg::xbar_cfg_t xbar_cfg = '{
    NoSlvPorts:         NumMasters,
    NoMstPorts:         NumSlaves,
    MaxMstTrans:        `MAX_MST_TRANS,
    MaxSlvTrans:        `MAX_SLV_TRANS,
    FallThrough:        1'b0,
    LatencyMode:        axi_pkg::CUT_ALL_AX,
    PipelineStages:     Pipeline,
    AxiIdWidthSlvPorts: AxiIdWidthMasters,
    AxiIdUsedSlvPorts:  AxiIdUsed,
    UniqueIds:          UniqueIds,
    AxiAddrWidth:       AxiAddrWidth,
    AxiDataWidth:       AxiDataWidth,
    NoAddrRules:        NumSlaves
  };

  localparam MstDwcPos = 6'b000111;
  localparam SlvDwcPos = 4'b0000;

  function [xbar_cfg.NoSlvPorts-1:0] [31:0] MstDwcGen ();
    MstDwcGen[0] = 32; // To add dst here
    MstDwcGen[1] = 32; // To add dst here
    MstDwcGen[2] = 32; // To add dst here
    MstDwcGen[3] = 1024; // To add dst here
    MstDwcGen[4] = 1024; // To add dst here
    MstDwcGen[5] = 1024; // To add dst here
  endfunction

  function [xbar_cfg.NoMstPorts-1:0] [31:0] SlvDwcGen ();
    SlvDwcGen[0] = 1024; // To add dst here
    SlvDwcGen[1] = 1024; // To add dst here
    SlvDwcGen[2] = 1024; // To add dst here
    SlvDwcGen[3] = 1024; // To add dst here
  endfunction

  localparam [xbar_cfg.NoSlvPorts-1:0] [31:0] MstDwcDataWidth = MstDwcGen();
  localparam [xbar_cfg.NoMstPorts-1:0] [31:0] SlvDwcDataWidth = SlvDwcGen();

  //-----------------------------------
  // Addess Map [TODO] mako integration
  //-----------------------------------
  typedef axi_pkg::xbar_rule_32_t         rule_t; // Has to be the same width as axi addr
  function rule_t [xbar_cfg.NoAddrRules-1:0] addr_map_gen ();
    addr_map_gen[0].idx = 0;
    addr_map_gen[0].start_addr = 32'h0200_0000;
    addr_map_gen[0].end_addr = 32'h0210_0000;
    addr_map_gen[1].idx = 1;
    addr_map_gen[1].start_addr = 32'h0210_0000;
    addr_map_gen[1].end_addr = 32'h0220_0000;
    addr_map_gen[2].idx = 2;
    addr_map_gen[2].start_addr = 32'h0220_0000;
    addr_map_gen[2].end_addr = 32'h0230_0000;
    addr_map_gen[3].idx = 3;
    addr_map_gen[3].start_addr = 32'h0230_0000;
    addr_map_gen[3].end_addr = 32'h0240_0000;
  endfunction

  localparam rule_t [xbar_cfg.NoAddrRules-1:0] AddrMap = addr_map_gen();

  //-----------------------------------
  // AXI Interface
  //-----------------------------------
  AXI_BUS #(
    .AXI_ADDR_WIDTH ( AxiAddrWidth      ),
    .AXI_DATA_WIDTH ( AxiDataWidth      ),
    .AXI_ID_WIDTH   ( AxiIdWidthMasters ),
    .AXI_USER_WIDTH ( AxiUserWidth      )
  ) master [NumMasters-1:0] ();

  AXI_BUS #(
    .AXI_ADDR_WIDTH ( AxiAddrWidth     ),
    .AXI_DATA_WIDTH ( AxiDataWidth     ),
    .AXI_ID_WIDTH   ( AxiIdWidthSlaves ),
    .AXI_USER_WIDTH ( AxiUserWidth     )
  ) slave [NumSlaves-1:0] ();

  //-----------------------------------
  // AXI Interface Connection
  //-----------------------------------
    `AXI_MST_ASSIGN(master[0], S00)
    `AXI_MST_ASSIGN(master[1], S01)
    `AXI_MST_ASSIGN(master[2], S02)
    `AXI_MST_ASSIGN(master[3], S03)
    `AXI_MST_ASSIGN(master[4], S04)
    `AXI_MST_ASSIGN(master[5], S05)

    `AXI_SLV_ASSIGN(slave[0], M00)
    `AXI_SLV_ASSIGN(slave[1], M01)
    `AXI_SLV_ASSIGN(slave[2], M02)
    `AXI_SLV_ASSIGN(slave[3], M03)

  //-----------------------------------
  // DUT
  //-----------------------------------
  axi_xbar_top #(
    .AXI_USER_WIDTH ( AxiUserWidth  ),
    .xbar_cfg       ( xbar_cfg        ),
    .MstDwcPos      ( MstDwcPos     ),
    .SlvDwcPos      ( SlvDwcPos     ),
    .MstDwcDataWidth( MstDwcDataWidth ),
    .SlvDwcDataWidth( SlvDwcDataWidth ),
    .rule_t         ( rule_t          )
  ) i_xbar_top (
    .clk_i                  ( M00_AXI_aclk     ),
    .rst_ni                 ( M00_AXI_aresetn   ),
    .test_i                 ( 1'b0    ),
    .slv_ports              ( master  ),
    .mst_ports              ( slave   ),
    .addr_map_i             ( AddrMap )
  );

endmodule
