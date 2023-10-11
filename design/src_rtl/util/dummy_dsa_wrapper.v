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

`include "xocc_define.h"
`include "sys_memory_map.h"

module dummy_dsa_wrapper #
	(
		parameter integer BURST_LENGTH_WIDTH  = 8,		//width of AXI burst length
		parameter integer BURST_SIZE_WIDTH  = 3,		//width of AXI burst size
		parameter ADDRESS_WIDTH = 32,			//width of address in xocc command
		parameter DSA0_CMD_WIDTH = 96,
		parameter DSA0_RSP_WIDTH = 32,

		// Parameters of Axi Master Bus Interface M00_AXI
		parameter integer AXI_ID_WIDTH	= 4,
		parameter integer AXI_ADDR_WIDTH	= 32,
		parameter integer AXI_DATA_WIDTH	= 1024

	)
	(
		clk,
		rst,
		dsa0_xocc_cmd_in,
		dsa0_cmd_fifo_empty,
		dsa0_rsp_fifo_full,
		dsa0_cmd_fifo_rd_en,
		dsa0_rsp_fifo_wr_en,
		dsa0_xocc_cmd_out,

		// Ports of Axi Master Bus Interface M00_AXI
		m00_axi_awid,
		m00_axi_awaddr,
		m00_axi_awlen,
		m00_axi_awsize,
		m00_axi_awburst,
		m00_axi_awlock,
		m00_axi_awcache,
		m00_axi_awprot,
		m00_axi_awqos,
		m00_axi_awvalid,
		m00_axi_awready,
		m00_axi_wdata,
		m00_axi_wstrb,
		m00_axi_wlast,
		m00_axi_wvalid,
		m00_axi_wready,
		m00_axi_bid,
		m00_axi_bresp,
		m00_axi_bvalid,
		m00_axi_bready,
		m00_axi_arid,
		m00_axi_araddr,
		m00_axi_arlen,
		m00_axi_arsize,
		m00_axi_arburst,
		m00_axi_arlock,
		m00_axi_arcache,
		m00_axi_arprot,
		m00_axi_arqos,
		m00_axi_arvalid,
		m00_axi_arready,
		m00_axi_rid,
		m00_axi_rdata,
		m00_axi_rresp,
		m00_axi_rlast,
		m00_axi_rvalid,
		m00_axi_rready
	);

    input   clk;
    input   rst;
    input   [DSA0_CMD_WIDTH-1:0] dsa0_xocc_cmd_in;
    input   dsa0_cmd_fifo_empty;
    input   dsa0_rsp_fifo_full;
    output   dsa0_cmd_fifo_rd_en;
    output   dsa0_rsp_fifo_wr_en;
    output  [DSA0_RSP_WIDTH-1:0] dsa0_xocc_cmd_out;
    
    // Ports of Axi Master Bus Interface M00_AXI
    output  [AXI_ID_WIDTH-1 : 0] m00_axi_awid;
    output  [AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr;
    output  [7 : 0] m00_axi_awlen;
    output  [2 : 0] m00_axi_awsize;
    output  [1 : 0] m00_axi_awburst;
    output   m00_axi_awlock;
    output  [3 : 0] m00_axi_awcache;
    output  [2 : 0] m00_axi_awprot;
    output  [3 : 0] m00_axi_awqos;
    output   m00_axi_awvalid;
    input   m00_axi_awready;
    output  [AXI_DATA_WIDTH-1 : 0] m00_axi_wdata;
    output  [AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb;
    output   m00_axi_wlast;
    output   m00_axi_wvalid;
    input   m00_axi_wready;
    input  [AXI_ID_WIDTH-1 : 0] m00_axi_bid;
    input  [1 : 0] m00_axi_bresp;
    input   m00_axi_bvalid;
    output   m00_axi_bready;
    output  [AXI_ID_WIDTH-1 : 0] m00_axi_arid;
    output  [AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr;
    output  [7 : 0] m00_axi_arlen;
    output  [2 : 0] m00_axi_arsize;
    output  [1 : 0] m00_axi_arburst;
    output   m00_axi_arlock;
    output  [3 : 0] m00_axi_arcache;
    output  [2 : 0] m00_axi_arprot;
    output  [3 : 0] m00_axi_arqos;
    output   m00_axi_arvalid;
    input   m00_axi_arready;
    input  [AXI_ID_WIDTH-1 : 0] m00_axi_rid;
    input  [AXI_DATA_WIDTH-1 : 0] m00_axi_rdata;
    input  [1 : 0] m00_axi_rresp;
    input   m00_axi_rlast;
    input   m00_axi_rvalid;
    output   m00_axi_rready;

	reg rd_en, wr_en;
    reg hit_flag;
    reg init_tx;
    reg init_rx;

    wire tx_done;
    wire rx_done;
    wire axi_error;
    reg read_enable;
    reg write_enable;
    reg [1023:0] write_data;
    reg [1023:0] read_data;


    always@(posedge clk or negedge rst) begin
		if(!rst) begin
		    rd_en <= 1'b0;
            hit_flag <= 1'b0;
		end
		else if(~dsa0_cmd_fifo_empty & ~hit_flag) begin
		    rd_en <= 1'b1;
            hit_flag <= 1'b1;
        end else if (init_tx) begin
            hit_flag <= 1'b0;
		end else begin
			rd_en <= 1'b0;
            hit_flag <= hit_flag;   //ensure transfer issued only once
		end
	end

    assign dsa0_cmd_fifo_rd_en = rd_en;
    assign dsa0_rsp_fifo_wr_en = 1'b0;
    assign dsa0_xocc_cmd_out = 'b0;

    always@(posedge clk or negedge rst) begin
		if(!rst) begin
		    init_rx <= 1'b0;
		end
		else if(rd_en) begin
		    init_rx <= 1'b1;
		end else begin
			init_rx <= 1'b0;
		end
	end

    always@(posedge clk or negedge rst) begin
		if(!rst) begin
		    write_data <= 0;
		end
		else if(m00_axi_wvalid & m00_axi_wready) begin
		    write_data <= write_data + {64{8'b1}};
        end else if(hit_flag & init_tx) begin
            write_data <= read_data;
		end else begin
			write_data <= write_data;
		end
	end

    always@(posedge clk or negedge rst) begin
		if(!rst) begin
		    read_data <= 0;
		end
		else if(m00_axi_rvalid & m00_axi_rready) begin
		    read_data <= m00_axi_rdata;
		end else begin
			read_data <= read_data;
		end
	end

    always@(posedge clk or negedge rst) begin
		if(!rst) begin
		    init_tx <= 1'b0;
		end
		else if(hit_flag & rx_done) begin   //write after read
		    init_tx <= 1'b1;
		end else begin
			init_tx <= 1'b0;
		end
	end

	axim_top # ( 
        .BURST_LENGTH_WIDTH(BURST_LENGTH_WIDTH), 
        .BURST_SIZE_WIDTH(BURST_SIZE_WIDTH), 
		.AXI_ID_WIDTH(AXI_ID_WIDTH),
		.AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
		.AXI_DATA_WIDTH(AXI_DATA_WIDTH)
	) axi_m00_inst (
		.write_burst_length(8'd7),   //8 transfers
		.write_burst_size(3'b110),  //64 Bytes, 512bits
		.read_burst_length(8'd0),
		.read_burst_size(3'b110),   //64Bytes
		.write_start_address(32'h2304000),
		.read_start_address(32'h2308000),
		.write_data(write_data),
		.read_enable(1'b1),
		.write_enable(1'b1),
		.init_write(init_tx),
		.init_read(init_rx),
		.tx_done(tx_done),
		.rx_done(rx_done),
		.error(axi_error),
		.aclk(clk),
		.aresetn(rst),
		.awid(m00_axi_awid),
		.awaddr(m00_axi_awaddr),
		.awlen(m00_axi_awlen),
		.awsize(m00_axi_awsize),
		.awburst(m00_axi_awburst),
		.awlock(m00_axi_awlock),
		.awcache(m00_axi_awcache),
		.awprot(m00_axi_awprot),
		.awqos(m00_axi_awqos),
		.awvalid(m00_axi_awvalid),
		.awready(m00_axi_awready),
		.wdata(m00_axi_wdata),
		.wstrb(m00_axi_wstrb),
		.wlast(m00_axi_wlast),
		.wvalid(m00_axi_wvalid),
		.wready(m00_axi_wready),
		.bid(m00_axi_bid),
		.bresp(m00_axi_bresp),
		.bvalid(m00_axi_bvalid),
		.bready(m00_axi_bready),
		.arid(m00_axi_arid),
		.araddr(m00_axi_araddr),
		.arlen(m00_axi_arlen),
		.arsize(m00_axi_arsize),
		.arburst(m00_axi_arburst),
		.arlock(m00_axi_arlock),
		.arcache(m00_axi_arcache),
		.arprot(m00_axi_arprot),
		.arqos(m00_axi_arqos),
		.arvalid(m00_axi_arvalid),
		.arready(m00_axi_arready),
		.rid(m00_axi_rid),
		.rdata(m00_axi_rdata),
		.rresp(m00_axi_rresp),
		.rlast(m00_axi_rlast),
		.rvalid(m00_axi_rvalid),
		.rready(m00_axi_rready)
	);

endmodule
