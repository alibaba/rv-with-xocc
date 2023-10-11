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

// &ModuleBeg; @1
module mem_sub_sys_top(
  mem_sub_sys_clk,
  mem_sub_sys_rstn,
  s_0_axi_araddr,
  s_0_axi_arburst,
  s_0_axi_arcache,
  s_0_axi_arid,
  s_0_axi_arlen,
  s_0_axi_arlock,
  s_0_axi_arprot,
  s_0_axi_arqos,
  s_0_axi_arready,
  s_0_axi_arsize,
  s_0_axi_arvalid,
  s_0_axi_awaddr,
  s_0_axi_awburst,
  s_0_axi_awcache,
  s_0_axi_awid,
  s_0_axi_awlen,
  s_0_axi_awlock,
  s_0_axi_awprot,
  s_0_axi_awqos,
  s_0_axi_awready,
  s_0_axi_awsize,
  s_0_axi_awvalid,
  s_0_axi_bid,
  s_0_axi_bready,
  s_0_axi_bresp,
  s_0_axi_bvalid,
  s_0_axi_rdata,
  s_0_axi_rid,
  s_0_axi_rlast,
  s_0_axi_rready,
  s_0_axi_rresp,
  s_0_axi_rvalid,
  s_0_axi_wdata,
  s_0_axi_wlast,
  s_0_axi_wready,
  s_0_axi_wstrb,
  s_0_axi_wvalid,
  s_1_axi_araddr,
  s_1_axi_arburst,
  s_1_axi_arcache,
  s_1_axi_arid,
  s_1_axi_arlen,
  s_1_axi_arlock,
  s_1_axi_arprot,
  s_1_axi_arqos,
  s_1_axi_arready,
  s_1_axi_arsize,
  s_1_axi_arvalid,
  s_1_axi_awaddr,
  s_1_axi_awburst,
  s_1_axi_awcache,
  s_1_axi_awid,
  s_1_axi_awlen,
  s_1_axi_awlock,
  s_1_axi_awprot,
  s_1_axi_awqos,
  s_1_axi_awready,
  s_1_axi_awsize,
  s_1_axi_awvalid,
  s_1_axi_bid,
  s_1_axi_bready,
  s_1_axi_bresp,
  s_1_axi_bvalid,
  s_1_axi_rdata,
  s_1_axi_rid,
  s_1_axi_rlast,
  s_1_axi_rready,
  s_1_axi_rresp,
  s_1_axi_rvalid,
  s_1_axi_wdata,
  s_1_axi_wlast,
  s_1_axi_wready,
  s_1_axi_wstrb,
  s_1_axi_wvalid,
  s_2_axi_araddr,
  s_2_axi_arburst,
  s_2_axi_arcache,
  s_2_axi_arid,
  s_2_axi_arlen,
  s_2_axi_arlock,
  s_2_axi_arprot,
  s_2_axi_arqos,
  s_2_axi_arready,
  s_2_axi_arsize,
  s_2_axi_arvalid,
  s_2_axi_awaddr,
  s_2_axi_awburst,
  s_2_axi_awcache,
  s_2_axi_awid,
  s_2_axi_awlen,
  s_2_axi_awlock,
  s_2_axi_awprot,
  s_2_axi_awqos,
  s_2_axi_awready,
  s_2_axi_awsize,
  s_2_axi_awvalid,
  s_2_axi_bid,
  s_2_axi_bready,
  s_2_axi_bresp,
  s_2_axi_bvalid,
  s_2_axi_rdata,
  s_2_axi_rid,
  s_2_axi_rlast,
  s_2_axi_rready,
  s_2_axi_rresp,
  s_2_axi_rvalid,
  s_2_axi_wdata,
  s_2_axi_wlast,
  s_2_axi_wready,
  s_2_axi_wstrb,
  s_2_axi_wvalid,
  s_3_axi_araddr,
  s_3_axi_arburst,
  s_3_axi_arcache,
  s_3_axi_arid,
  s_3_axi_arlen,
  s_3_axi_arlock,
  s_3_axi_arprot,
  s_3_axi_arqos,
  s_3_axi_arready,
  s_3_axi_arsize,
  s_3_axi_arvalid,
  s_3_axi_awaddr,
  s_3_axi_awburst,
  s_3_axi_awcache,
  s_3_axi_awid,
  s_3_axi_awlen,
  s_3_axi_awlock,
  s_3_axi_awprot,
  s_3_axi_awqos,
  s_3_axi_awready,
  s_3_axi_awsize,
  s_3_axi_awvalid,
  s_3_axi_bid,
  s_3_axi_bready,
  s_3_axi_bresp,
  s_3_axi_bvalid,
  s_3_axi_rdata,
  s_3_axi_rid,
  s_3_axi_rlast,
  s_3_axi_rready,
  s_3_axi_rresp,
  s_3_axi_rvalid,
  s_3_axi_wdata,
  s_3_axi_wlast,
  s_3_axi_wready,
  s_3_axi_wstrb,
  s_3_axi_wvalid
);

// &Ports; @2
input             mem_sub_sys_clk; 
input             mem_sub_sys_rstn; 
input   [19  :0]  s_0_axi_araddr;  
input   [1   :0]  s_0_axi_arburst; 
input   [3   :0]  s_0_axi_arcache; 
input   [7   :0]  s_0_axi_arid;    
input   [7   :0]  s_0_axi_arlen;   
input             s_0_axi_arlock;  
input   [2   :0]  s_0_axi_arprot;  
input   [3   :0]  s_0_axi_arqos;   
input   [2   :0]  s_0_axi_arsize;  
input             s_0_axi_arvalid; 
input   [19  :0]  s_0_axi_awaddr;  
input   [1   :0]  s_0_axi_awburst; 
input   [3   :0]  s_0_axi_awcache; 
input   [7   :0]  s_0_axi_awid;    
input   [7   :0]  s_0_axi_awlen;   
input             s_0_axi_awlock;  
input   [2   :0]  s_0_axi_awprot;  
input   [3   :0]  s_0_axi_awqos;   
input   [2   :0]  s_0_axi_awsize;  
input             s_0_axi_awvalid; 
input             s_0_axi_bready;  
input             s_0_axi_rready;  
input   [1023:0]  s_0_axi_wdata;   
input             s_0_axi_wlast;   
input   [127 :0]  s_0_axi_wstrb;   
input             s_0_axi_wvalid;  
input   [19  :0]  s_1_axi_araddr;  
input   [1   :0]  s_1_axi_arburst; 
input   [3   :0]  s_1_axi_arcache; 
input   [7   :0]  s_1_axi_arid;    
input   [7   :0]  s_1_axi_arlen;   
input             s_1_axi_arlock;  
input   [2   :0]  s_1_axi_arprot;  
input   [3   :0]  s_1_axi_arqos;   
input   [2   :0]  s_1_axi_arsize;  
input             s_1_axi_arvalid; 
input   [19  :0]  s_1_axi_awaddr;  
input   [1   :0]  s_1_axi_awburst; 
input   [3   :0]  s_1_axi_awcache; 
input   [7   :0]  s_1_axi_awid;    
input   [7   :0]  s_1_axi_awlen;   
input             s_1_axi_awlock;  
input   [2   :0]  s_1_axi_awprot;  
input   [3   :0]  s_1_axi_awqos;   
input   [2   :0]  s_1_axi_awsize;  
input             s_1_axi_awvalid; 
input             s_1_axi_bready;  
input             s_1_axi_rready;  
input   [1023:0]  s_1_axi_wdata;   
input             s_1_axi_wlast;   
input   [127 :0]  s_1_axi_wstrb;   
input             s_1_axi_wvalid;  
input   [19  :0]  s_2_axi_araddr;  
input   [1   :0]  s_2_axi_arburst; 
input   [3   :0]  s_2_axi_arcache; 
input   [7   :0]  s_2_axi_arid;    
input   [7   :0]  s_2_axi_arlen;   
input             s_2_axi_arlock;  
input   [2   :0]  s_2_axi_arprot;  
input   [3   :0]  s_2_axi_arqos;   
input   [2   :0]  s_2_axi_arsize;  
input             s_2_axi_arvalid; 
input   [19  :0]  s_2_axi_awaddr;  
input   [1   :0]  s_2_axi_awburst; 
input   [3   :0]  s_2_axi_awcache; 
input   [7   :0]  s_2_axi_awid;    
input   [7   :0]  s_2_axi_awlen;   
input             s_2_axi_awlock;  
input   [2   :0]  s_2_axi_awprot;  
input   [3   :0]  s_2_axi_awqos;   
input   [2   :0]  s_2_axi_awsize;  
input             s_2_axi_awvalid; 
input             s_2_axi_bready;  
input             s_2_axi_rready;  
input   [1023:0]  s_2_axi_wdata;   
input             s_2_axi_wlast;   
input   [127 :0]  s_2_axi_wstrb;   
input             s_2_axi_wvalid;  
input   [19  :0]  s_3_axi_araddr;  
input   [1   :0]  s_3_axi_arburst; 
input   [3   :0]  s_3_axi_arcache; 
input   [7   :0]  s_3_axi_arid;    
input   [7   :0]  s_3_axi_arlen;   
input             s_3_axi_arlock;  
input   [2   :0]  s_3_axi_arprot;  
input   [3   :0]  s_3_axi_arqos;   
input   [2   :0]  s_3_axi_arsize;  
input             s_3_axi_arvalid; 
input   [19  :0]  s_3_axi_awaddr;  
input   [1   :0]  s_3_axi_awburst; 
input   [3   :0]  s_3_axi_awcache; 
input   [7   :0]  s_3_axi_awid;    
input   [7   :0]  s_3_axi_awlen;   
input             s_3_axi_awlock;  
input   [2   :0]  s_3_axi_awprot;  
input   [3   :0]  s_3_axi_awqos;   
input   [2   :0]  s_3_axi_awsize;  
input             s_3_axi_awvalid; 
input             s_3_axi_bready;  
input             s_3_axi_rready;  
input   [1023:0]  s_3_axi_wdata;   
input             s_3_axi_wlast;   
input   [127 :0]  s_3_axi_wstrb;   
input             s_3_axi_wvalid;  
output            s_0_axi_arready; 
output            s_0_axi_awready; 
output  [7   :0]  s_0_axi_bid;     
output  [1   :0]  s_0_axi_bresp;   
output            s_0_axi_bvalid;  
output  [1023:0]  s_0_axi_rdata;   
output  [7   :0]  s_0_axi_rid;     
output            s_0_axi_rlast;   
output  [1   :0]  s_0_axi_rresp;   
output            s_0_axi_rvalid;  
output            s_0_axi_wready;  
output            s_1_axi_arready; 
output            s_1_axi_awready; 
output  [7   :0]  s_1_axi_bid;     
output  [1   :0]  s_1_axi_bresp;   
output            s_1_axi_bvalid;  
output  [1023:0]  s_1_axi_rdata;   
output  [7   :0]  s_1_axi_rid;     
output            s_1_axi_rlast;   
output  [1   :0]  s_1_axi_rresp;   
output            s_1_axi_rvalid;  
output            s_1_axi_wready;  
output            s_2_axi_arready; 
output            s_2_axi_awready; 
output  [7   :0]  s_2_axi_bid;     
output  [1   :0]  s_2_axi_bresp;   
output            s_2_axi_bvalid;  
output  [1023:0]  s_2_axi_rdata;   
output  [7   :0]  s_2_axi_rid;     
output            s_2_axi_rlast;   
output  [1   :0]  s_2_axi_rresp;   
output            s_2_axi_rvalid;  
output            s_2_axi_wready;  
output            s_3_axi_arready; 
output            s_3_axi_awready; 
output  [7   :0]  s_3_axi_bid;     
output  [1   :0]  s_3_axi_bresp;   
output            s_3_axi_bvalid;  
output  [1023:0]  s_3_axi_rdata;   
output  [7   :0]  s_3_axi_rid;     
output            s_3_axi_rlast;   
output  [1   :0]  s_3_axi_rresp;   
output            s_3_axi_rvalid;  
output            s_3_axi_wready;  

// &Regs; @3

// &Wires; @4
wire              mem_sub_sys_clk; 
wire              mem_sub_sys_rstn; 
wire    [19  :0]  s_0_axi_araddr;  
wire    [1   :0]  s_0_axi_arburst; 
wire    [3   :0]  s_0_axi_arcache; 
wire    [7   :0]  s_0_axi_arid;    
wire    [7   :0]  s_0_axi_arlen;   
wire              s_0_axi_arlock;  
wire    [2   :0]  s_0_axi_arprot;  
wire    [3   :0]  s_0_axi_arqos;   
wire              s_0_axi_arready; 
wire    [2   :0]  s_0_axi_arsize;  
wire              s_0_axi_arvalid; 
wire    [19  :0]  s_0_axi_awaddr;  
wire    [1   :0]  s_0_axi_awburst; 
wire    [3   :0]  s_0_axi_awcache; 
wire    [7   :0]  s_0_axi_awid;    
wire    [7   :0]  s_0_axi_awlen;   
wire              s_0_axi_awlock;  
wire    [2   :0]  s_0_axi_awprot;  
wire    [3   :0]  s_0_axi_awqos;   
wire              s_0_axi_awready; 
wire    [2   :0]  s_0_axi_awsize;  
wire              s_0_axi_awvalid; 
wire    [7   :0]  s_0_axi_bid;     
wire              s_0_axi_bready;  
wire    [1   :0]  s_0_axi_bresp;   
wire              s_0_axi_bvalid;  
wire    [1023:0]  s_0_axi_rdata;   
wire    [7   :0]  s_0_axi_rid;     
wire              s_0_axi_rlast;   
wire              s_0_axi_rready;  
wire    [1   :0]  s_0_axi_rresp;   
wire              s_0_axi_rvalid;  
wire    [1023:0]  s_0_axi_wdata;   
wire              s_0_axi_wlast;   
wire              s_0_axi_wready;  
wire    [127 :0]  s_0_axi_wstrb;   
wire              s_0_axi_wvalid;  
wire    [19  :0]  s_1_axi_araddr;  
wire    [1   :0]  s_1_axi_arburst; 
wire    [3   :0]  s_1_axi_arcache; 
wire    [7   :0]  s_1_axi_arid;    
wire    [7   :0]  s_1_axi_arlen;   
wire              s_1_axi_arlock;  
wire    [2   :0]  s_1_axi_arprot;  
wire    [3   :0]  s_1_axi_arqos;   
wire              s_1_axi_arready; 
wire    [2   :0]  s_1_axi_arsize;  
wire              s_1_axi_arvalid; 
wire    [19  :0]  s_1_axi_awaddr;  
wire    [1   :0]  s_1_axi_awburst; 
wire    [3   :0]  s_1_axi_awcache; 
wire    [7   :0]  s_1_axi_awid;    
wire    [7   :0]  s_1_axi_awlen;   
wire              s_1_axi_awlock;  
wire    [2   :0]  s_1_axi_awprot;  
wire    [3   :0]  s_1_axi_awqos;   
wire              s_1_axi_awready; 
wire    [2   :0]  s_1_axi_awsize;  
wire              s_1_axi_awvalid; 
wire    [7   :0]  s_1_axi_bid;     
wire              s_1_axi_bready;  
wire    [1   :0]  s_1_axi_bresp;   
wire              s_1_axi_bvalid;  
wire    [1023:0]  s_1_axi_rdata;   
wire    [7   :0]  s_1_axi_rid;     
wire              s_1_axi_rlast;   
wire              s_1_axi_rready;  
wire    [1   :0]  s_1_axi_rresp;   
wire              s_1_axi_rvalid;  
wire    [1023:0]  s_1_axi_wdata;   
wire              s_1_axi_wlast;   
wire              s_1_axi_wready;  
wire    [127 :0]  s_1_axi_wstrb;   
wire              s_1_axi_wvalid;  
wire    [19  :0]  s_2_axi_araddr;  
wire    [1   :0]  s_2_axi_arburst; 
wire    [3   :0]  s_2_axi_arcache; 
wire    [7   :0]  s_2_axi_arid;    
wire    [7   :0]  s_2_axi_arlen;   
wire              s_2_axi_arlock;  
wire    [2   :0]  s_2_axi_arprot;  
wire    [3   :0]  s_2_axi_arqos;   
wire              s_2_axi_arready; 
wire    [2   :0]  s_2_axi_arsize;  
wire              s_2_axi_arvalid; 
wire    [19  :0]  s_2_axi_awaddr;  
wire    [1   :0]  s_2_axi_awburst; 
wire    [3   :0]  s_2_axi_awcache; 
wire    [7   :0]  s_2_axi_awid;    
wire    [7   :0]  s_2_axi_awlen;   
wire              s_2_axi_awlock;  
wire    [2   :0]  s_2_axi_awprot;  
wire    [3   :0]  s_2_axi_awqos;   
wire              s_2_axi_awready; 
wire    [2   :0]  s_2_axi_awsize;  
wire              s_2_axi_awvalid; 
wire    [7   :0]  s_2_axi_bid;     
wire              s_2_axi_bready;  
wire    [1   :0]  s_2_axi_bresp;   
wire              s_2_axi_bvalid;  
wire    [1023:0]  s_2_axi_rdata;   
wire    [7   :0]  s_2_axi_rid;     
wire              s_2_axi_rlast;   
wire              s_2_axi_rready;  
wire    [1   :0]  s_2_axi_rresp;   
wire              s_2_axi_rvalid;  
wire    [1023:0]  s_2_axi_wdata;   
wire              s_2_axi_wlast;   
wire              s_2_axi_wready;  
wire    [127 :0]  s_2_axi_wstrb;   
wire              s_2_axi_wvalid;  
wire    [19  :0]  s_3_axi_araddr;  
wire    [1   :0]  s_3_axi_arburst; 
wire    [3   :0]  s_3_axi_arcache; 
wire    [7   :0]  s_3_axi_arid;    
wire    [7   :0]  s_3_axi_arlen;   
wire              s_3_axi_arlock;  
wire    [2   :0]  s_3_axi_arprot;  
wire    [3   :0]  s_3_axi_arqos;   
wire              s_3_axi_arready; 
wire    [2   :0]  s_3_axi_arsize;  
wire              s_3_axi_arvalid; 
wire    [19  :0]  s_3_axi_awaddr;  
wire    [1   :0]  s_3_axi_awburst; 
wire    [3   :0]  s_3_axi_awcache; 
wire    [7   :0]  s_3_axi_awid;    
wire    [7   :0]  s_3_axi_awlen;   
wire              s_3_axi_awlock;  
wire    [2   :0]  s_3_axi_awprot;  
wire    [3   :0]  s_3_axi_awqos;   
wire              s_3_axi_awready; 
wire    [2   :0]  s_3_axi_awsize;  
wire              s_3_axi_awvalid; 
wire    [7   :0]  s_3_axi_bid;     
wire              s_3_axi_bready;  
wire    [1   :0]  s_3_axi_bresp;   
wire              s_3_axi_bvalid;  
wire    [1023:0]  s_3_axi_rdata;   
wire    [7   :0]  s_3_axi_rid;     
wire              s_3_axi_rlast;   
wire              s_3_axi_rready;  
wire    [1   :0]  s_3_axi_rresp;   
wire              s_3_axi_rvalid;  
wire    [1023:0]  s_3_axi_wdata;   
wire              s_3_axi_wlast;   
wire              s_3_axi_wready;  
wire    [127 :0]  s_3_axi_wstrb;   
wire              s_3_axi_wvalid;  


// &ConnRule(s/s_axi/s_0_axi/); @6
// &Instance("axi_uram_top", "x_axi_uram_0"); @7
axi_uram_top  x_axi_uram_0 (
  .s_axi_aclk       (mem_sub_sys_clk ),
  .s_axi_araddr     (s_0_axi_araddr  ),
  .s_axi_arburst    (s_0_axi_arburst ),
  .s_axi_arcache    (s_0_axi_arcache ),
  .s_axi_aresetn    (mem_sub_sys_rstn),
  .s_axi_arid       (s_0_axi_arid    ),
  .s_axi_arlen      (s_0_axi_arlen   ),
  .s_axi_arlock     (s_0_axi_arlock  ),
  .s_axi_arprot     (s_0_axi_arprot  ),
  .s_axi_arqos      (s_0_axi_arqos   ),
  .s_axi_arready    (s_0_axi_arready ),
  .s_axi_arsize     (s_0_axi_arsize  ),
  .s_axi_arvalid    (s_0_axi_arvalid ),
  .s_axi_awaddr     (s_0_axi_awaddr  ),
  .s_axi_awburst    (s_0_axi_awburst ),
  .s_axi_awcache    (s_0_axi_awcache ),
  .s_axi_awid       (s_0_axi_awid    ),
  .s_axi_awlen      (s_0_axi_awlen   ),
  .s_axi_awlock     (s_0_axi_awlock  ),
  .s_axi_awprot     (s_0_axi_awprot  ),
  .s_axi_awqos      (s_0_axi_awqos   ),
  .s_axi_awready    (s_0_axi_awready ),
  .s_axi_awsize     (s_0_axi_awsize  ),
  .s_axi_awvalid    (s_0_axi_awvalid ),
  .s_axi_bid        (s_0_axi_bid     ),
  .s_axi_bready     (s_0_axi_bready  ),
  .s_axi_bresp      (s_0_axi_bresp   ),
  .s_axi_bvalid     (s_0_axi_bvalid  ),
  .s_axi_rdata      (s_0_axi_rdata   ),
  .s_axi_rid        (s_0_axi_rid     ),
  .s_axi_rlast      (s_0_axi_rlast   ),
  .s_axi_rready     (s_0_axi_rready  ),
  .s_axi_rresp      (s_0_axi_rresp   ),
  .s_axi_rvalid     (s_0_axi_rvalid  ),
  .s_axi_wdata      (s_0_axi_wdata   ),
  .s_axi_wlast      (s_0_axi_wlast   ),
  .s_axi_wready     (s_0_axi_wready  ),
  .s_axi_wstrb      (s_0_axi_wstrb   ),
  .s_axi_wvalid     (s_0_axi_wvalid  )
);

// &Connect( @8
//     .s_axi_aclk (mem_sub_sys_clk), @9
//     .s_axi_aresetn (mem_sub_sys_rstn), @10
// ); @11

// &ConnRule(s/s_axi/s_1_axi/); @13
// &Instance("axi_uram_top", "x_axi_uram_1"); @14
axi_uram_top  x_axi_uram_1 (
  .s_axi_aclk       (mem_sub_sys_clk ),
  .s_axi_araddr     (s_1_axi_araddr  ),
  .s_axi_arburst    (s_1_axi_arburst ),
  .s_axi_arcache    (s_1_axi_arcache ),
  .s_axi_aresetn    (mem_sub_sys_rstn),
  .s_axi_arid       (s_1_axi_arid    ),
  .s_axi_arlen      (s_1_axi_arlen   ),
  .s_axi_arlock     (s_1_axi_arlock  ),
  .s_axi_arprot     (s_1_axi_arprot  ),
  .s_axi_arqos      (s_1_axi_arqos   ),
  .s_axi_arready    (s_1_axi_arready ),
  .s_axi_arsize     (s_1_axi_arsize  ),
  .s_axi_arvalid    (s_1_axi_arvalid ),
  .s_axi_awaddr     (s_1_axi_awaddr  ),
  .s_axi_awburst    (s_1_axi_awburst ),
  .s_axi_awcache    (s_1_axi_awcache ),
  .s_axi_awid       (s_1_axi_awid    ),
  .s_axi_awlen      (s_1_axi_awlen   ),
  .s_axi_awlock     (s_1_axi_awlock  ),
  .s_axi_awprot     (s_1_axi_awprot  ),
  .s_axi_awqos      (s_1_axi_awqos   ),
  .s_axi_awready    (s_1_axi_awready ),
  .s_axi_awsize     (s_1_axi_awsize  ),
  .s_axi_awvalid    (s_1_axi_awvalid ),
  .s_axi_bid        (s_1_axi_bid     ),
  .s_axi_bready     (s_1_axi_bready  ),
  .s_axi_bresp      (s_1_axi_bresp   ),
  .s_axi_bvalid     (s_1_axi_bvalid  ),
  .s_axi_rdata      (s_1_axi_rdata   ),
  .s_axi_rid        (s_1_axi_rid     ),
  .s_axi_rlast      (s_1_axi_rlast   ),
  .s_axi_rready     (s_1_axi_rready  ),
  .s_axi_rresp      (s_1_axi_rresp   ),
  .s_axi_rvalid     (s_1_axi_rvalid  ),
  .s_axi_wdata      (s_1_axi_wdata   ),
  .s_axi_wlast      (s_1_axi_wlast   ),
  .s_axi_wready     (s_1_axi_wready  ),
  .s_axi_wstrb      (s_1_axi_wstrb   ),
  .s_axi_wvalid     (s_1_axi_wvalid  )
);

// &Connect( @15
//     .s_axi_aclk (mem_sub_sys_clk), @16
//     .s_axi_aresetn (mem_sub_sys_rstn), @17
// ); @18

// &ConnRule(s/s_axi/s_2_axi/); @20
// &Instance("axi_uram_top", "x_axi_uram_2"); @21
axi_uram_top  x_axi_uram_2 (
  .s_axi_aclk       (mem_sub_sys_clk ),
  .s_axi_araddr     (s_2_axi_araddr  ),
  .s_axi_arburst    (s_2_axi_arburst ),
  .s_axi_arcache    (s_2_axi_arcache ),
  .s_axi_aresetn    (mem_sub_sys_rstn),
  .s_axi_arid       (s_2_axi_arid    ),
  .s_axi_arlen      (s_2_axi_arlen   ),
  .s_axi_arlock     (s_2_axi_arlock  ),
  .s_axi_arprot     (s_2_axi_arprot  ),
  .s_axi_arqos      (s_2_axi_arqos   ),
  .s_axi_arready    (s_2_axi_arready ),
  .s_axi_arsize     (s_2_axi_arsize  ),
  .s_axi_arvalid    (s_2_axi_arvalid ),
  .s_axi_awaddr     (s_2_axi_awaddr  ),
  .s_axi_awburst    (s_2_axi_awburst ),
  .s_axi_awcache    (s_2_axi_awcache ),
  .s_axi_awid       (s_2_axi_awid    ),
  .s_axi_awlen      (s_2_axi_awlen   ),
  .s_axi_awlock     (s_2_axi_awlock  ),
  .s_axi_awprot     (s_2_axi_awprot  ),
  .s_axi_awqos      (s_2_axi_awqos   ),
  .s_axi_awready    (s_2_axi_awready ),
  .s_axi_awsize     (s_2_axi_awsize  ),
  .s_axi_awvalid    (s_2_axi_awvalid ),
  .s_axi_bid        (s_2_axi_bid     ),
  .s_axi_bready     (s_2_axi_bready  ),
  .s_axi_bresp      (s_2_axi_bresp   ),
  .s_axi_bvalid     (s_2_axi_bvalid  ),
  .s_axi_rdata      (s_2_axi_rdata   ),
  .s_axi_rid        (s_2_axi_rid     ),
  .s_axi_rlast      (s_2_axi_rlast   ),
  .s_axi_rready     (s_2_axi_rready  ),
  .s_axi_rresp      (s_2_axi_rresp   ),
  .s_axi_rvalid     (s_2_axi_rvalid  ),
  .s_axi_wdata      (s_2_axi_wdata   ),
  .s_axi_wlast      (s_2_axi_wlast   ),
  .s_axi_wready     (s_2_axi_wready  ),
  .s_axi_wstrb      (s_2_axi_wstrb   ),
  .s_axi_wvalid     (s_2_axi_wvalid  )
);

// &Connect( @22
//     .s_axi_aclk (mem_sub_sys_clk), @23
//     .s_axi_aresetn (mem_sub_sys_rstn), @24
// ); @25

// &ConnRule(s/s_axi/s_3_axi/); @27
// &Instance("axi_uram_top", "x_axi_uram_3"); @28
axi_uram_top  x_axi_uram_3 (
  .s_axi_aclk       (mem_sub_sys_clk ),
  .s_axi_araddr     (s_3_axi_araddr  ),
  .s_axi_arburst    (s_3_axi_arburst ),
  .s_axi_arcache    (s_3_axi_arcache ),
  .s_axi_aresetn    (mem_sub_sys_rstn),
  .s_axi_arid       (s_3_axi_arid    ),
  .s_axi_arlen      (s_3_axi_arlen   ),
  .s_axi_arlock     (s_3_axi_arlock  ),
  .s_axi_arprot     (s_3_axi_arprot  ),
  .s_axi_arqos      (s_3_axi_arqos   ),
  .s_axi_arready    (s_3_axi_arready ),
  .s_axi_arsize     (s_3_axi_arsize  ),
  .s_axi_arvalid    (s_3_axi_arvalid ),
  .s_axi_awaddr     (s_3_axi_awaddr  ),
  .s_axi_awburst    (s_3_axi_awburst ),
  .s_axi_awcache    (s_3_axi_awcache ),
  .s_axi_awid       (s_3_axi_awid    ),
  .s_axi_awlen      (s_3_axi_awlen   ),
  .s_axi_awlock     (s_3_axi_awlock  ),
  .s_axi_awprot     (s_3_axi_awprot  ),
  .s_axi_awqos      (s_3_axi_awqos   ),
  .s_axi_awready    (s_3_axi_awready ),
  .s_axi_awsize     (s_3_axi_awsize  ),
  .s_axi_awvalid    (s_3_axi_awvalid ),
  .s_axi_bid        (s_3_axi_bid     ),
  .s_axi_bready     (s_3_axi_bready  ),
  .s_axi_bresp      (s_3_axi_bresp   ),
  .s_axi_bvalid     (s_3_axi_bvalid  ),
  .s_axi_rdata      (s_3_axi_rdata   ),
  .s_axi_rid        (s_3_axi_rid     ),
  .s_axi_rlast      (s_3_axi_rlast   ),
  .s_axi_rready     (s_3_axi_rready  ),
  .s_axi_rresp      (s_3_axi_rresp   ),
  .s_axi_rvalid     (s_3_axi_rvalid  ),
  .s_axi_wdata      (s_3_axi_wdata   ),
  .s_axi_wlast      (s_3_axi_wlast   ),
  .s_axi_wready     (s_3_axi_wready  ),
  .s_axi_wstrb      (s_3_axi_wstrb   ),
  .s_axi_wvalid     (s_3_axi_wvalid  )
);

// &Connect( @29
//     .s_axi_aclk (mem_sub_sys_clk), @30
//     .s_axi_aresetn (mem_sub_sys_rstn), @31
// ); @32


// &ModuleEnd; @35
endmodule


