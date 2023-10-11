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
module rv_cluster_top(
  rv_0_clk,
  rv_0_m_axi_araddr,
  rv_0_m_axi_arburst,
  rv_0_m_axi_arcache,
  rv_0_m_axi_arid,
  rv_0_m_axi_arlen,
  rv_0_m_axi_arlock,
  rv_0_m_axi_arprot,
  rv_0_m_axi_arqos,
  rv_0_m_axi_arready,
  rv_0_m_axi_arsize,
  rv_0_m_axi_arvalid,
  rv_0_m_axi_awaddr,
  rv_0_m_axi_awburst,
  rv_0_m_axi_awcache,
  rv_0_m_axi_awid,
  rv_0_m_axi_awlen,
  rv_0_m_axi_awlock,
  rv_0_m_axi_awprot,
  rv_0_m_axi_awqos,
  rv_0_m_axi_awready,
  rv_0_m_axi_awsize,
  rv_0_m_axi_awvalid,
  rv_0_m_axi_bid,
  rv_0_m_axi_bready,
  rv_0_m_axi_bresp,
  rv_0_m_axi_bvalid,
  rv_0_m_axi_rdata,
  rv_0_m_axi_rid,
  rv_0_m_axi_rlast,
  rv_0_m_axi_rready,
  rv_0_m_axi_rresp,
  rv_0_m_axi_rvalid,
  rv_0_m_axi_wdata,
  rv_0_m_axi_wlast,
  rv_0_m_axi_wready,
  rv_0_m_axi_wstrb,
  rv_0_m_axi_wvalid,
  rv_0_retire_pc,
  rv_0_rst_addr,
  rv_0_rstn,
  rv_0_xocc_2_clk,
  rv_0_xocc_2_cmd_buffer,
  rv_0_xocc_2_cmd_empty,
  rv_0_xocc_2_cmd_rd_en,
  rv_0_xocc_2_rsp_buffer,
  rv_0_xocc_2_rsp_full,
  rv_0_xocc_2_rsp_wr_en,
  rv_0_xocc_2_rst,
  rv_1_clk,
  rv_1_m_axi_araddr,
  rv_1_m_axi_arburst,
  rv_1_m_axi_arcache,
  rv_1_m_axi_arid,
  rv_1_m_axi_arlen,
  rv_1_m_axi_arlock,
  rv_1_m_axi_arprot,
  rv_1_m_axi_arqos,
  rv_1_m_axi_arready,
  rv_1_m_axi_arsize,
  rv_1_m_axi_arvalid,
  rv_1_m_axi_awaddr,
  rv_1_m_axi_awburst,
  rv_1_m_axi_awcache,
  rv_1_m_axi_awid,
  rv_1_m_axi_awlen,
  rv_1_m_axi_awlock,
  rv_1_m_axi_awprot,
  rv_1_m_axi_awqos,
  rv_1_m_axi_awready,
  rv_1_m_axi_awsize,
  rv_1_m_axi_awvalid,
  rv_1_m_axi_bid,
  rv_1_m_axi_bready,
  rv_1_m_axi_bresp,
  rv_1_m_axi_bvalid,
  rv_1_m_axi_rdata,
  rv_1_m_axi_rid,
  rv_1_m_axi_rlast,
  rv_1_m_axi_rready,
  rv_1_m_axi_rresp,
  rv_1_m_axi_rvalid,
  rv_1_m_axi_wdata,
  rv_1_m_axi_wlast,
  rv_1_m_axi_wready,
  rv_1_m_axi_wstrb,
  rv_1_m_axi_wvalid,
  rv_1_retire_pc,
  rv_1_rst_addr,
  rv_1_rstn,
  rv_1_xocc_3_clk,
  rv_1_xocc_3_cmd_buffer,
  rv_1_xocc_3_cmd_empty,
  rv_1_xocc_3_cmd_rd_en,
  rv_1_xocc_3_rsp_buffer,
  rv_1_xocc_3_rsp_full,
  rv_1_xocc_3_rsp_wr_en,
  rv_1_xocc_3_rst,
  rv_2_clk,
  rv_2_m_axi_araddr,
  rv_2_m_axi_arburst,
  rv_2_m_axi_arcache,
  rv_2_m_axi_arid,
  rv_2_m_axi_arlen,
  rv_2_m_axi_arlock,
  rv_2_m_axi_arprot,
  rv_2_m_axi_arqos,
  rv_2_m_axi_arready,
  rv_2_m_axi_arsize,
  rv_2_m_axi_arvalid,
  rv_2_m_axi_awaddr,
  rv_2_m_axi_awburst,
  rv_2_m_axi_awcache,
  rv_2_m_axi_awid,
  rv_2_m_axi_awlen,
  rv_2_m_axi_awlock,
  rv_2_m_axi_awprot,
  rv_2_m_axi_awqos,
  rv_2_m_axi_awready,
  rv_2_m_axi_awsize,
  rv_2_m_axi_awvalid,
  rv_2_m_axi_bid,
  rv_2_m_axi_bready,
  rv_2_m_axi_bresp,
  rv_2_m_axi_bvalid,
  rv_2_m_axi_rdata,
  rv_2_m_axi_rid,
  rv_2_m_axi_rlast,
  rv_2_m_axi_rready,
  rv_2_m_axi_rresp,
  rv_2_m_axi_rvalid,
  rv_2_m_axi_wdata,
  rv_2_m_axi_wlast,
  rv_2_m_axi_wready,
  rv_2_m_axi_wstrb,
  rv_2_m_axi_wvalid,
  rv_2_retire_pc,
  rv_2_rst_addr,
  rv_2_rstn,
  rv_2_xocc_4_clk,
  rv_2_xocc_4_cmd_buffer,
  rv_2_xocc_4_cmd_empty,
  rv_2_xocc_4_cmd_rd_en,
  rv_2_xocc_4_rsp_buffer,
  rv_2_xocc_4_rsp_full,
  rv_2_xocc_4_rsp_wr_en,
  rv_2_xocc_4_rst
);

// &Ports; @2
input           rv_0_clk;              
input           rv_0_m_axi_arready;    
input           rv_0_m_axi_awready;    
input   [3 :0]  rv_0_m_axi_bid;        
input   [1 :0]  rv_0_m_axi_bresp;      
input           rv_0_m_axi_bvalid;     
input   [31:0]  rv_0_m_axi_rdata;      
input   [3 :0]  rv_0_m_axi_rid;        
input           rv_0_m_axi_rlast;      
input   [1 :0]  rv_0_m_axi_rresp;      
input           rv_0_m_axi_rvalid;     
input           rv_0_m_axi_wready;     
input   [31:0]  rv_0_rst_addr;         
input           rv_0_rstn;             
input           rv_0_xocc_2_clk;       
input           rv_0_xocc_2_cmd_rd_en; 
input   [31:0]  rv_0_xocc_2_rsp_buffer; 
input           rv_0_xocc_2_rsp_wr_en; 
input           rv_0_xocc_2_rst;       
input           rv_1_clk;               
input           rv_1_m_axi_arready;     
input           rv_1_m_axi_awready;     
input   [3 :0]  rv_1_m_axi_bid;         
input   [1 :0]  rv_1_m_axi_bresp;       
input           rv_1_m_axi_bvalid;      
input   [31:0]  rv_1_m_axi_rdata;       
input   [3 :0]  rv_1_m_axi_rid;         
input           rv_1_m_axi_rlast;       
input   [1 :0]  rv_1_m_axi_rresp;       
input           rv_1_m_axi_rvalid;      
input           rv_1_m_axi_wready;      
input   [31:0]  rv_1_rst_addr;          
input           rv_1_rstn;              
input           rv_1_xocc_3_clk;        
input           rv_1_xocc_3_cmd_rd_en;  
input   [31:0]  rv_1_xocc_3_rsp_buffer; 
input           rv_1_xocc_3_rsp_wr_en;  
input           rv_1_xocc_3_rst;        
input           rv_2_clk;               
input           rv_2_m_axi_arready;     
input           rv_2_m_axi_awready;     
input   [3 :0]  rv_2_m_axi_bid;         
input   [1 :0]  rv_2_m_axi_bresp;       
input           rv_2_m_axi_bvalid;      
input   [31:0]  rv_2_m_axi_rdata;       
input   [3 :0]  rv_2_m_axi_rid;         
input           rv_2_m_axi_rlast;       
input   [1 :0]  rv_2_m_axi_rresp;       
input           rv_2_m_axi_rvalid;      
input           rv_2_m_axi_wready;      
input   [31:0]  rv_2_rst_addr;          
input           rv_2_rstn;              
input           rv_2_xocc_4_clk;        
input           rv_2_xocc_4_cmd_rd_en;  
input   [31:0]  rv_2_xocc_4_rsp_buffer; 
input           rv_2_xocc_4_rsp_wr_en;  
input           rv_2_xocc_4_rst;        
output  [31:0]  rv_0_m_axi_araddr;     
output  [1 :0]  rv_0_m_axi_arburst;    
output  [3 :0]  rv_0_m_axi_arcache;    
output  [3 :0]  rv_0_m_axi_arid;       
output  [7 :0]  rv_0_m_axi_arlen;      
output          rv_0_m_axi_arlock;     
output  [2 :0]  rv_0_m_axi_arprot;     
output  [3 :0]  rv_0_m_axi_arqos;      
output  [2 :0]  rv_0_m_axi_arsize;     
output          rv_0_m_axi_arvalid;    
output  [31:0]  rv_0_m_axi_awaddr;     
output  [1 :0]  rv_0_m_axi_awburst;    
output  [3 :0]  rv_0_m_axi_awcache;    
output  [3 :0]  rv_0_m_axi_awid;       
output  [7 :0]  rv_0_m_axi_awlen;      
output          rv_0_m_axi_awlock;     
output  [2 :0]  rv_0_m_axi_awprot;     
output  [3 :0]  rv_0_m_axi_awqos;      
output  [2 :0]  rv_0_m_axi_awsize;     
output          rv_0_m_axi_awvalid;    
output          rv_0_m_axi_bready;     
output          rv_0_m_axi_rready;     
output  [31:0]  rv_0_m_axi_wdata;      
output          rv_0_m_axi_wlast;      
output  [3 :0]  rv_0_m_axi_wstrb;      
output          rv_0_m_axi_wvalid;     
output  [31:0]  rv_0_retire_pc;        
output  [95:0]  rv_0_xocc_2_cmd_buffer; 
output          rv_0_xocc_2_cmd_empty; 
output          rv_0_xocc_2_rsp_full;  
output  [31:0]  rv_1_m_axi_araddr;      
output  [1 :0]  rv_1_m_axi_arburst;     
output  [3 :0]  rv_1_m_axi_arcache;     
output  [3 :0]  rv_1_m_axi_arid;        
output  [7 :0]  rv_1_m_axi_arlen;       
output          rv_1_m_axi_arlock;      
output  [2 :0]  rv_1_m_axi_arprot;      
output  [3 :0]  rv_1_m_axi_arqos;       
output  [2 :0]  rv_1_m_axi_arsize;      
output          rv_1_m_axi_arvalid;     
output  [31:0]  rv_1_m_axi_awaddr;      
output  [1 :0]  rv_1_m_axi_awburst;     
output  [3 :0]  rv_1_m_axi_awcache;     
output  [3 :0]  rv_1_m_axi_awid;        
output  [7 :0]  rv_1_m_axi_awlen;       
output          rv_1_m_axi_awlock;      
output  [2 :0]  rv_1_m_axi_awprot;      
output  [3 :0]  rv_1_m_axi_awqos;       
output  [2 :0]  rv_1_m_axi_awsize;      
output          rv_1_m_axi_awvalid;     
output          rv_1_m_axi_bready;      
output          rv_1_m_axi_rready;      
output  [31:0]  rv_1_m_axi_wdata;       
output          rv_1_m_axi_wlast;       
output  [3 :0]  rv_1_m_axi_wstrb;       
output          rv_1_m_axi_wvalid;      
output  [31:0]  rv_1_retire_pc;         
output  [95:0]  rv_1_xocc_3_cmd_buffer; 
output          rv_1_xocc_3_cmd_empty;  
output          rv_1_xocc_3_rsp_full;   
output  [31:0]  rv_2_m_axi_araddr;      
output  [1 :0]  rv_2_m_axi_arburst;     
output  [3 :0]  rv_2_m_axi_arcache;     
output  [3 :0]  rv_2_m_axi_arid;        
output  [7 :0]  rv_2_m_axi_arlen;       
output          rv_2_m_axi_arlock;      
output  [2 :0]  rv_2_m_axi_arprot;      
output  [3 :0]  rv_2_m_axi_arqos;       
output  [2 :0]  rv_2_m_axi_arsize;      
output          rv_2_m_axi_arvalid;     
output  [31:0]  rv_2_m_axi_awaddr;      
output  [1 :0]  rv_2_m_axi_awburst;     
output  [3 :0]  rv_2_m_axi_awcache;     
output  [3 :0]  rv_2_m_axi_awid;        
output  [7 :0]  rv_2_m_axi_awlen;       
output          rv_2_m_axi_awlock;      
output  [2 :0]  rv_2_m_axi_awprot;      
output  [3 :0]  rv_2_m_axi_awqos;       
output  [2 :0]  rv_2_m_axi_awsize;      
output          rv_2_m_axi_awvalid;     
output          rv_2_m_axi_bready;      
output          rv_2_m_axi_rready;      
output  [31:0]  rv_2_m_axi_wdata;       
output          rv_2_m_axi_wlast;       
output  [3 :0]  rv_2_m_axi_wstrb;       
output          rv_2_m_axi_wvalid;      
output  [31:0]  rv_2_retire_pc;         
output  [95:0]  rv_2_xocc_4_cmd_buffer; 
output          rv_2_xocc_4_cmd_empty;  
output          rv_2_xocc_4_rsp_full;   

// &Regs; @3

// &Wires; @4
wire            rv_0_clk;              
wire    [31:0]  rv_0_m_axi_araddr;     
wire    [1 :0]  rv_0_m_axi_arburst;    
wire    [3 :0]  rv_0_m_axi_arcache;    
wire    [3 :0]  rv_0_m_axi_arid;       
wire    [7 :0]  rv_0_m_axi_arlen;      
wire            rv_0_m_axi_arlock;     
wire    [2 :0]  rv_0_m_axi_arprot;     
wire    [3 :0]  rv_0_m_axi_arqos;      
wire            rv_0_m_axi_arready;    
wire    [2 :0]  rv_0_m_axi_arsize;     
wire            rv_0_m_axi_arvalid;    
wire    [31:0]  rv_0_m_axi_awaddr;     
wire    [1 :0]  rv_0_m_axi_awburst;    
wire    [3 :0]  rv_0_m_axi_awcache;    
wire    [3 :0]  rv_0_m_axi_awid;       
wire    [7 :0]  rv_0_m_axi_awlen;      
wire            rv_0_m_axi_awlock;     
wire    [2 :0]  rv_0_m_axi_awprot;     
wire    [3 :0]  rv_0_m_axi_awqos;      
wire            rv_0_m_axi_awready;    
wire    [2 :0]  rv_0_m_axi_awsize;     
wire            rv_0_m_axi_awvalid;    
wire    [3 :0]  rv_0_m_axi_bid;        
wire            rv_0_m_axi_bready;     
wire    [1 :0]  rv_0_m_axi_bresp;      
wire            rv_0_m_axi_bvalid;     
wire    [31:0]  rv_0_m_axi_rdata;      
wire    [3 :0]  rv_0_m_axi_rid;        
wire            rv_0_m_axi_rlast;      
wire            rv_0_m_axi_rready;     
wire    [1 :0]  rv_0_m_axi_rresp;      
wire            rv_0_m_axi_rvalid;     
wire    [31:0]  rv_0_m_axi_wdata;      
wire            rv_0_m_axi_wlast;      
wire            rv_0_m_axi_wready;     
wire    [3 :0]  rv_0_m_axi_wstrb;      
wire            rv_0_m_axi_wvalid;     
wire    [31:0]  rv_0_retire_pc;        
wire    [31:0]  rv_0_rst_addr;         
wire            rv_0_rstn;             
wire    [31:0]  rv_0_xocc_0_cmd_buffer; 
wire            rv_0_xocc_0_cmd_empty; 
wire            rv_0_xocc_0_cmd_rd_en; 
wire    [31:0]  rv_0_xocc_0_rsp_buffer; 
wire            rv_0_xocc_0_rsp_full;  
wire            rv_0_xocc_0_rsp_wr_en; 
wire    [31:0]  rv_0_xocc_1_cmd_buffer; 
wire            rv_0_xocc_1_cmd_empty; 
wire            rv_0_xocc_1_cmd_rd_en; 
wire    [31:0]  rv_0_xocc_1_rsp_buffer; 
wire            rv_0_xocc_1_rsp_full;  
wire            rv_0_xocc_1_rsp_wr_en; 
wire            rv_0_xocc_2_clk;       
wire    [95:0]  rv_0_xocc_2_cmd_buffer; 
wire            rv_0_xocc_2_cmd_empty; 
wire            rv_0_xocc_2_cmd_rd_en; 
wire    [31:0]  rv_0_xocc_2_rsp_buffer; 
wire            rv_0_xocc_2_rsp_full;  
wire            rv_0_xocc_2_rsp_wr_en; 
wire            rv_0_xocc_2_rst;       
wire            rv_1_clk;               
wire    [31:0]  rv_1_m_axi_araddr;      
wire    [1 :0]  rv_1_m_axi_arburst;     
wire    [3 :0]  rv_1_m_axi_arcache;     
wire    [3 :0]  rv_1_m_axi_arid;        
wire    [7 :0]  rv_1_m_axi_arlen;       
wire            rv_1_m_axi_arlock;      
wire    [2 :0]  rv_1_m_axi_arprot;      
wire    [3 :0]  rv_1_m_axi_arqos;       
wire            rv_1_m_axi_arready;     
wire    [2 :0]  rv_1_m_axi_arsize;      
wire            rv_1_m_axi_arvalid;     
wire    [31:0]  rv_1_m_axi_awaddr;      
wire    [1 :0]  rv_1_m_axi_awburst;     
wire    [3 :0]  rv_1_m_axi_awcache;     
wire    [3 :0]  rv_1_m_axi_awid;        
wire    [7 :0]  rv_1_m_axi_awlen;       
wire            rv_1_m_axi_awlock;      
wire    [2 :0]  rv_1_m_axi_awprot;      
wire    [3 :0]  rv_1_m_axi_awqos;       
wire            rv_1_m_axi_awready;     
wire    [2 :0]  rv_1_m_axi_awsize;      
wire            rv_1_m_axi_awvalid;     
wire    [3 :0]  rv_1_m_axi_bid;         
wire            rv_1_m_axi_bready;      
wire    [1 :0]  rv_1_m_axi_bresp;       
wire            rv_1_m_axi_bvalid;      
wire    [31:0]  rv_1_m_axi_rdata;       
wire    [3 :0]  rv_1_m_axi_rid;         
wire            rv_1_m_axi_rlast;       
wire            rv_1_m_axi_rready;      
wire    [1 :0]  rv_1_m_axi_rresp;       
wire            rv_1_m_axi_rvalid;      
wire    [31:0]  rv_1_m_axi_wdata;       
wire            rv_1_m_axi_wlast;       
wire            rv_1_m_axi_wready;      
wire    [3 :0]  rv_1_m_axi_wstrb;       
wire            rv_1_m_axi_wvalid;      
wire    [31:0]  rv_1_retire_pc;         
wire    [31:0]  rv_1_rst_addr;          
wire            rv_1_rstn;              
wire    [31:0]  rv_1_xocc_0_cmd_buffer; 
wire            rv_1_xocc_0_cmd_empty;  
wire            rv_1_xocc_0_cmd_rd_en;  
wire    [31:0]  rv_1_xocc_0_rsp_buffer; 
wire            rv_1_xocc_0_rsp_full;   
wire            rv_1_xocc_0_rsp_wr_en;  
wire            rv_1_xocc_3_clk;        
wire    [95:0]  rv_1_xocc_3_cmd_buffer; 
wire            rv_1_xocc_3_cmd_empty;  
wire            rv_1_xocc_3_cmd_rd_en;  
wire    [31:0]  rv_1_xocc_3_rsp_buffer; 
wire            rv_1_xocc_3_rsp_full;   
wire            rv_1_xocc_3_rsp_wr_en;  
wire            rv_1_xocc_3_rst;        
wire            rv_2_clk;               
wire    [31:0]  rv_2_m_axi_araddr;      
wire    [1 :0]  rv_2_m_axi_arburst;     
wire    [3 :0]  rv_2_m_axi_arcache;     
wire    [3 :0]  rv_2_m_axi_arid;        
wire    [7 :0]  rv_2_m_axi_arlen;       
wire            rv_2_m_axi_arlock;      
wire    [2 :0]  rv_2_m_axi_arprot;      
wire    [3 :0]  rv_2_m_axi_arqos;       
wire            rv_2_m_axi_arready;     
wire    [2 :0]  rv_2_m_axi_arsize;      
wire            rv_2_m_axi_arvalid;     
wire    [31:0]  rv_2_m_axi_awaddr;      
wire    [1 :0]  rv_2_m_axi_awburst;     
wire    [3 :0]  rv_2_m_axi_awcache;     
wire    [3 :0]  rv_2_m_axi_awid;        
wire    [7 :0]  rv_2_m_axi_awlen;       
wire            rv_2_m_axi_awlock;      
wire    [2 :0]  rv_2_m_axi_awprot;      
wire    [3 :0]  rv_2_m_axi_awqos;       
wire            rv_2_m_axi_awready;     
wire    [2 :0]  rv_2_m_axi_awsize;      
wire            rv_2_m_axi_awvalid;     
wire    [3 :0]  rv_2_m_axi_bid;         
wire            rv_2_m_axi_bready;      
wire    [1 :0]  rv_2_m_axi_bresp;       
wire            rv_2_m_axi_bvalid;      
wire    [31:0]  rv_2_m_axi_rdata;       
wire    [3 :0]  rv_2_m_axi_rid;         
wire            rv_2_m_axi_rlast;       
wire            rv_2_m_axi_rready;      
wire    [1 :0]  rv_2_m_axi_rresp;       
wire            rv_2_m_axi_rvalid;      
wire    [31:0]  rv_2_m_axi_wdata;       
wire            rv_2_m_axi_wlast;       
wire            rv_2_m_axi_wready;      
wire    [3 :0]  rv_2_m_axi_wstrb;       
wire            rv_2_m_axi_wvalid;      
wire    [31:0]  rv_2_retire_pc;         
wire    [31:0]  rv_2_rst_addr;          
wire            rv_2_rstn;              
wire    [31:0]  rv_2_xocc_1_cmd_buffer; 
wire            rv_2_xocc_1_cmd_empty;  
wire            rv_2_xocc_1_cmd_rd_en;  
wire    [31:0]  rv_2_xocc_1_rsp_buffer; 
wire            rv_2_xocc_1_rsp_full;   
wire            rv_2_xocc_1_rsp_wr_en;  
wire            rv_2_xocc_4_clk;        
wire    [95:0]  rv_2_xocc_4_cmd_buffer; 
wire            rv_2_xocc_4_cmd_empty;  
wire            rv_2_xocc_4_cmd_rd_en;  
wire    [31:0]  rv_2_xocc_4_rsp_buffer; 
wire            rv_2_xocc_4_rsp_full;   
wire            rv_2_xocc_4_rsp_wr_en;  
wire            rv_2_xocc_4_rst;        


// Init RV: dispatcher
// &ConnRule(s/^xocc_0/rv_0_xocc_0/); @7
// &ConnRule(s/^xocc_1/rv_0_xocc_1/); @8
// &ConnRule(s/^xocc_2/rv_0_xocc_2/); @9
// &ConnRule(s/m_axi/rv_0_m_axi/); @10
// &Instance("rv_0_wrapper"); @11
rv_0_wrapper  x_rv_0_wrapper (
  .biu_pad_retire_pc            (rv_0_retire_pc        ),
  .i_pad_clk                    (rv_0_clk              ),
  .i_pad_rst_b                  (rv_0_rstn             ),
  .m_axi_araddr                 (rv_0_m_axi_araddr     ),
  .m_axi_arburst                (rv_0_m_axi_arburst    ),
  .m_axi_arcache                (rv_0_m_axi_arcache    ),
  .m_axi_arid                   (rv_0_m_axi_arid       ),
  .m_axi_arlen                  (rv_0_m_axi_arlen      ),
  .m_axi_arlock                 (rv_0_m_axi_arlock     ),
  .m_axi_arprot                 (rv_0_m_axi_arprot     ),
  .m_axi_arqos                  (rv_0_m_axi_arqos      ),
  .m_axi_arready                (rv_0_m_axi_arready    ),
  .m_axi_arsize                 (rv_0_m_axi_arsize     ),
  .m_axi_arvalid                (rv_0_m_axi_arvalid    ),
  .m_axi_awaddr                 (rv_0_m_axi_awaddr     ),
  .m_axi_awburst                (rv_0_m_axi_awburst    ),
  .m_axi_awcache                (rv_0_m_axi_awcache    ),
  .m_axi_awid                   (rv_0_m_axi_awid       ),
  .m_axi_awlen                  (rv_0_m_axi_awlen      ),
  .m_axi_awlock                 (rv_0_m_axi_awlock     ),
  .m_axi_awprot                 (rv_0_m_axi_awprot     ),
  .m_axi_awqos                  (rv_0_m_axi_awqos      ),
  .m_axi_awready                (rv_0_m_axi_awready    ),
  .m_axi_awsize                 (rv_0_m_axi_awsize     ),
  .m_axi_awvalid                (rv_0_m_axi_awvalid    ),
  .m_axi_bid                    (rv_0_m_axi_bid        ),
  .m_axi_bready                 (rv_0_m_axi_bready     ),
  .m_axi_bresp                  (rv_0_m_axi_bresp      ),
  .m_axi_bvalid                 (rv_0_m_axi_bvalid     ),
  .m_axi_rdata                  (rv_0_m_axi_rdata      ),
  .m_axi_rid                    (rv_0_m_axi_rid        ),
  .m_axi_rlast                  (rv_0_m_axi_rlast      ),
  .m_axi_rready                 (rv_0_m_axi_rready     ),
  .m_axi_rresp                  (rv_0_m_axi_rresp      ),
  .m_axi_rvalid                 (rv_0_m_axi_rvalid     ),
  .m_axi_wdata                  (rv_0_m_axi_wdata      ),
  .m_axi_wlast                  (rv_0_m_axi_wlast      ),
  .m_axi_wready                 (rv_0_m_axi_wready     ),
  .m_axi_wstrb                  (rv_0_m_axi_wstrb      ),
  .m_axi_wvalid                 (rv_0_m_axi_wvalid     ),
  .pad_cpu_rst_addr             (rv_0_rst_addr         ),
  .xocc_0_clk                   (rv_1_clk               ),
  .xocc_0_cmd_buffer            (rv_0_xocc_0_cmd_buffer),
  .xocc_0_cmd_empty             (rv_0_xocc_0_cmd_empty ),
  .xocc_0_cmd_rd_en             (rv_0_xocc_0_cmd_rd_en ),
  .xocc_0_rsp_buffer            (rv_0_xocc_0_rsp_buffer),
  .xocc_0_rsp_full              (rv_0_xocc_0_rsp_full  ),
  .xocc_0_rsp_wr_en             (rv_0_xocc_0_rsp_wr_en ),
  .xocc_0_rst                   (rv_1_rstn              ),
  .xocc_1_clk                   (rv_2_clk               ),
  .xocc_1_cmd_buffer            (rv_0_xocc_1_cmd_buffer),
  .xocc_1_cmd_empty             (rv_0_xocc_1_cmd_empty ),
  .xocc_1_cmd_rd_en             (rv_0_xocc_1_cmd_rd_en ),
  .xocc_1_rsp_buffer            (rv_0_xocc_1_rsp_buffer),
  .xocc_1_rsp_full              (rv_0_xocc_1_rsp_full  ),
  .xocc_1_rsp_wr_en             (rv_0_xocc_1_rsp_wr_en ),
  .xocc_1_rst                   (rv_2_rstn              ),
  .xocc_2_clk                   (rv_0_xocc_2_clk       ),
  .xocc_2_cmd_buffer            (rv_0_xocc_2_cmd_buffer),
  .xocc_2_cmd_empty             (rv_0_xocc_2_cmd_empty ),
  .xocc_2_cmd_rd_en             (rv_0_xocc_2_cmd_rd_en ),
  .xocc_2_rsp_buffer            (rv_0_xocc_2_rsp_buffer),
  .xocc_2_rsp_full              (rv_0_xocc_2_rsp_full  ),
  .xocc_2_rsp_wr_en             (rv_0_xocc_2_rsp_wr_en ),
  .xocc_2_rst                   (rv_0_xocc_2_rst       )
);

// &Connect( @12
//     .biu_pad_retire_pc (rv_0_retire_pc), @13
//     .i_pad_clk (rv_0_clk), @14
//     .i_pad_rst_b (rv_0_rstn), @15
//     .pad_cpu_rst_addr (rv_0_rst_addr), @16
//     .xocc_0_clk (rv_1_clk), @17
//     .xocc_0_rst (rv_1_rstn), @18
//     .xocc_1_clk (rv_2_clk), @19
//     .xocc_1_rst (rv_2_rstn), @20
// ); @21

// Init RV: regular_0
// &ConnRule(s/^xocc_0/rv_1_xocc_0/); @24
// &ConnRule(s/^xocc_1/rv_1_xocc_3/); @25
// &ConnRule(s/m_axi/rv_1_m_axi/); @26
// &Instance("rv_1_wrapper"); @27
rv_1_wrapper  x_rv_1_wrapper (
  .biu_pad_retire_pc           (rv_1_retire_pc        ),
  .i_pad_clk                   (rv_1_clk              ),
  .i_pad_rst_b                 (rv_1_rstn             ),
  .m_axi_araddr                (rv_1_m_axi_araddr     ),
  .m_axi_arburst               (rv_1_m_axi_arburst    ),
  .m_axi_arcache               (rv_1_m_axi_arcache    ),
  .m_axi_arid                  (rv_1_m_axi_arid       ),
  .m_axi_arlen                 (rv_1_m_axi_arlen      ),
  .m_axi_arlock                (rv_1_m_axi_arlock     ),
  .m_axi_arprot                (rv_1_m_axi_arprot     ),
  .m_axi_arqos                 (rv_1_m_axi_arqos      ),
  .m_axi_arready               (rv_1_m_axi_arready    ),
  .m_axi_arsize                (rv_1_m_axi_arsize     ),
  .m_axi_arvalid               (rv_1_m_axi_arvalid    ),
  .m_axi_awaddr                (rv_1_m_axi_awaddr     ),
  .m_axi_awburst               (rv_1_m_axi_awburst    ),
  .m_axi_awcache               (rv_1_m_axi_awcache    ),
  .m_axi_awid                  (rv_1_m_axi_awid       ),
  .m_axi_awlen                 (rv_1_m_axi_awlen      ),
  .m_axi_awlock                (rv_1_m_axi_awlock     ),
  .m_axi_awprot                (rv_1_m_axi_awprot     ),
  .m_axi_awqos                 (rv_1_m_axi_awqos      ),
  .m_axi_awready               (rv_1_m_axi_awready    ),
  .m_axi_awsize                (rv_1_m_axi_awsize     ),
  .m_axi_awvalid               (rv_1_m_axi_awvalid    ),
  .m_axi_bid                   (rv_1_m_axi_bid        ),
  .m_axi_bready                (rv_1_m_axi_bready     ),
  .m_axi_bresp                 (rv_1_m_axi_bresp      ),
  .m_axi_bvalid                (rv_1_m_axi_bvalid     ),
  .m_axi_rdata                 (rv_1_m_axi_rdata      ),
  .m_axi_rid                   (rv_1_m_axi_rid        ),
  .m_axi_rlast                 (rv_1_m_axi_rlast      ),
  .m_axi_rready                (rv_1_m_axi_rready     ),
  .m_axi_rresp                 (rv_1_m_axi_rresp      ),
  .m_axi_rvalid                (rv_1_m_axi_rvalid     ),
  .m_axi_wdata                 (rv_1_m_axi_wdata      ),
  .m_axi_wlast                 (rv_1_m_axi_wlast      ),
  .m_axi_wready                (rv_1_m_axi_wready     ),
  .m_axi_wstrb                 (rv_1_m_axi_wstrb      ),
  .m_axi_wvalid                (rv_1_m_axi_wvalid     ),
  .pad_cpu_rst_addr            (rv_1_rst_addr         ),
  .xocc_0_clk                  (rv_0_clk             ),
  .xocc_0_cmd_buffer           (rv_1_xocc_0_cmd_buffer),
  .xocc_0_cmd_empty            (rv_1_xocc_0_cmd_empty ),
  .xocc_0_cmd_rd_en            (rv_1_xocc_0_cmd_rd_en ),
  .xocc_0_rsp_buffer           (rv_1_xocc_0_rsp_buffer),
  .xocc_0_rsp_full             (rv_1_xocc_0_rsp_full  ),
  .xocc_0_rsp_wr_en            (rv_1_xocc_0_rsp_wr_en ),
  .xocc_0_rst                  (rv_0_rstn            ),
  .xocc_1_clk                  (rv_1_xocc_3_clk       ),
  .xocc_1_cmd_buffer           (rv_1_xocc_3_cmd_buffer),
  .xocc_1_cmd_empty            (rv_1_xocc_3_cmd_empty ),
  .xocc_1_cmd_rd_en            (rv_1_xocc_3_cmd_rd_en ),
  .xocc_1_rsp_buffer           (rv_1_xocc_3_rsp_buffer),
  .xocc_1_rsp_full             (rv_1_xocc_3_rsp_full  ),
  .xocc_1_rsp_wr_en            (rv_1_xocc_3_rsp_wr_en ),
  .xocc_1_rst                  (rv_1_xocc_3_rst       )
);

// &Connect( @28
//     .biu_pad_retire_pc (rv_1_retire_pc), @29
//     .i_pad_clk (rv_1_clk), @30
//     .i_pad_rst_b (rv_1_rstn), @31
//     .pad_cpu_rst_addr (rv_1_rst_addr), @32
//     .xocc_0_clk (rv_0_clk), @33
//     .xocc_0_rst (rv_0_rstn), @34
// ); @35

// Init RV: regular_1
// &ConnRule(s/^xocc_0/rv_2_xocc_1/); @38
// &ConnRule(s/^xocc_1/rv_2_xocc_4/); @39
// &ConnRule(s/m_axi/rv_2_m_axi/); @40
// &Instance("rv_2_wrapper"); @41
rv_2_wrapper  x_rv_2_wrapper (
  .biu_pad_retire_pc           (rv_2_retire_pc        ),
  .i_pad_clk                   (rv_2_clk              ),
  .i_pad_rst_b                 (rv_2_rstn             ),
  .m_axi_araddr                (rv_2_m_axi_araddr     ),
  .m_axi_arburst               (rv_2_m_axi_arburst    ),
  .m_axi_arcache               (rv_2_m_axi_arcache    ),
  .m_axi_arid                  (rv_2_m_axi_arid       ),
  .m_axi_arlen                 (rv_2_m_axi_arlen      ),
  .m_axi_arlock                (rv_2_m_axi_arlock     ),
  .m_axi_arprot                (rv_2_m_axi_arprot     ),
  .m_axi_arqos                 (rv_2_m_axi_arqos      ),
  .m_axi_arready               (rv_2_m_axi_arready    ),
  .m_axi_arsize                (rv_2_m_axi_arsize     ),
  .m_axi_arvalid               (rv_2_m_axi_arvalid    ),
  .m_axi_awaddr                (rv_2_m_axi_awaddr     ),
  .m_axi_awburst               (rv_2_m_axi_awburst    ),
  .m_axi_awcache               (rv_2_m_axi_awcache    ),
  .m_axi_awid                  (rv_2_m_axi_awid       ),
  .m_axi_awlen                 (rv_2_m_axi_awlen      ),
  .m_axi_awlock                (rv_2_m_axi_awlock     ),
  .m_axi_awprot                (rv_2_m_axi_awprot     ),
  .m_axi_awqos                 (rv_2_m_axi_awqos      ),
  .m_axi_awready               (rv_2_m_axi_awready    ),
  .m_axi_awsize                (rv_2_m_axi_awsize     ),
  .m_axi_awvalid               (rv_2_m_axi_awvalid    ),
  .m_axi_bid                   (rv_2_m_axi_bid        ),
  .m_axi_bready                (rv_2_m_axi_bready     ),
  .m_axi_bresp                 (rv_2_m_axi_bresp      ),
  .m_axi_bvalid                (rv_2_m_axi_bvalid     ),
  .m_axi_rdata                 (rv_2_m_axi_rdata      ),
  .m_axi_rid                   (rv_2_m_axi_rid        ),
  .m_axi_rlast                 (rv_2_m_axi_rlast      ),
  .m_axi_rready                (rv_2_m_axi_rready     ),
  .m_axi_rresp                 (rv_2_m_axi_rresp      ),
  .m_axi_rvalid                (rv_2_m_axi_rvalid     ),
  .m_axi_wdata                 (rv_2_m_axi_wdata      ),
  .m_axi_wlast                 (rv_2_m_axi_wlast      ),
  .m_axi_wready                (rv_2_m_axi_wready     ),
  .m_axi_wstrb                 (rv_2_m_axi_wstrb      ),
  .m_axi_wvalid                (rv_2_m_axi_wvalid     ),
  .pad_cpu_rst_addr            (rv_2_rst_addr         ),
  .xocc_0_clk                  (rv_0_clk             ),
  .xocc_0_cmd_buffer           (rv_2_xocc_1_cmd_buffer),
  .xocc_0_cmd_empty            (rv_2_xocc_1_cmd_empty ),
  .xocc_0_cmd_rd_en            (rv_2_xocc_1_cmd_rd_en ),
  .xocc_0_rsp_buffer           (rv_2_xocc_1_rsp_buffer),
  .xocc_0_rsp_full             (rv_2_xocc_1_rsp_full  ),
  .xocc_0_rsp_wr_en            (rv_2_xocc_1_rsp_wr_en ),
  .xocc_0_rst                  (rv_0_rstn            ),
  .xocc_1_clk                  (rv_2_xocc_4_clk       ),
  .xocc_1_cmd_buffer           (rv_2_xocc_4_cmd_buffer),
  .xocc_1_cmd_empty            (rv_2_xocc_4_cmd_empty ),
  .xocc_1_cmd_rd_en            (rv_2_xocc_4_cmd_rd_en ),
  .xocc_1_rsp_buffer           (rv_2_xocc_4_rsp_buffer),
  .xocc_1_rsp_full             (rv_2_xocc_4_rsp_full  ),
  .xocc_1_rsp_wr_en            (rv_2_xocc_4_rsp_wr_en ),
  .xocc_1_rst                  (rv_2_xocc_4_rst       )
);

// &Connect( @42
//     .biu_pad_retire_pc (rv_2_retire_pc), @43
//     .i_pad_clk (rv_2_clk), @44
//     .i_pad_rst_b (rv_2_rstn), @45
//     .pad_cpu_rst_addr (rv_2_rst_addr), @46
//     .xocc_0_clk (rv_0_clk), @47
//     .xocc_0_rst (rv_0_rstn), @48
// ); @49

// Init XoCC Connect from dispatcher to regular_0
// &ConnRule(s/xocc_s/rv_1_xocc_0/); @52
// &ConnRule(s/s_xocc/rv_1_xocc_0/); @53
// &ConnRule(s/m_xocc/rv_0_xocc_0/); @54
// &ConnRule(s/xocc_m/rv_0_xocc_0/); @55
// &Instance("xocc_connect", "x_xocc_connect_0"); @56
xocc_connect  x_xocc_connect_0 (
  .clk                          (rv_1_clk               ),
  .m_xocc_cmd_buffer            (rv_0_xocc_0_cmd_buffer),
  .m_xocc_cmd_empty             (rv_0_xocc_0_cmd_empty ),
  .m_xocc_cmd_rd_en             (rv_0_xocc_0_cmd_rd_en ),
  .m_xocc_rsp_full              (rv_0_xocc_0_rsp_full  ),
  .m_xocc_rsp_wr_en             (rv_0_xocc_0_rsp_wr_en ),
  .rstn                         (rv_1_rstn              ),
  .s_xocc_cmd_buffer            (rv_1_xocc_0_cmd_buffer ),
  .s_xocc_cmd_empty             (rv_1_xocc_0_cmd_empty  ),
  .s_xocc_cmd_rd_en             (rv_1_xocc_0_cmd_rd_en  ),
  .s_xocc_rsp_full              (rv_1_xocc_0_rsp_full   ),
  .s_xocc_rsp_wr_en             (rv_1_xocc_0_rsp_wr_en  ),
  .xocc_m_rsp_buffer            (rv_0_xocc_0_rsp_buffer),
  .xocc_s_rsp_buffer            (rv_1_xocc_0_rsp_buffer )
);

// &Connect( @57
//     .clk (rv_1_clk), @58
//     .rstn (rv_1_rstn), @59
// ); @60
// &Force("input", "rv_1_clk"); @61
// &Force("input", "rv_1_rstn"); @62

// Init XoCC Connect from dispatcher to regular_1
// &ConnRule(s/xocc_s/rv_2_xocc_1/); @65
// &ConnRule(s/s_xocc/rv_2_xocc_1/); @66
// &ConnRule(s/m_xocc/rv_0_xocc_1/); @67
// &ConnRule(s/xocc_m/rv_0_xocc_1/); @68
// &Instance("xocc_connect", "x_xocc_connect_1"); @69
xocc_connect  x_xocc_connect_1 (
  .clk                          (rv_2_clk               ),
  .m_xocc_cmd_buffer            (rv_0_xocc_1_cmd_buffer),
  .m_xocc_cmd_empty             (rv_0_xocc_1_cmd_empty ),
  .m_xocc_cmd_rd_en             (rv_0_xocc_1_cmd_rd_en ),
  .m_xocc_rsp_full              (rv_0_xocc_1_rsp_full  ),
  .m_xocc_rsp_wr_en             (rv_0_xocc_1_rsp_wr_en ),
  .rstn                         (rv_2_rstn              ),
  .s_xocc_cmd_buffer            (rv_2_xocc_1_cmd_buffer ),
  .s_xocc_cmd_empty             (rv_2_xocc_1_cmd_empty  ),
  .s_xocc_cmd_rd_en             (rv_2_xocc_1_cmd_rd_en  ),
  .s_xocc_rsp_full              (rv_2_xocc_1_rsp_full   ),
  .s_xocc_rsp_wr_en             (rv_2_xocc_1_rsp_wr_en  ),
  .xocc_m_rsp_buffer            (rv_0_xocc_1_rsp_buffer),
  .xocc_s_rsp_buffer            (rv_2_xocc_1_rsp_buffer )
);

// &Connect( @70
//     .clk (rv_2_clk), @71
//     .rstn (rv_2_rstn), @72
// ); @73
// &Force("input", "rv_2_clk"); @74
// &Force("input", "rv_2_rstn"); @75

// &ModuleEnd; @77
endmodule


