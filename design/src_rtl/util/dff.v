// *                                                                           *
// * T-Head Confidential                                           *
// * -------------------------------                                           *
// * This file and all its contents are properties of C-Sky Microsystems. The  *
// * information contained herein is confidential and proprietary and is not   *
// * to be disclosed outside of C-Sky Microsystems except under a              *
// * Non-Disclosure Agreement (NDA).                                           *
// *                                                                           *
// *****************************************************************************
// FILE NAME       : dff.v
// AUTHOR          : Huang Linyong
// ORIGINAL TIME   : 2022.10.13
// FUNCTION        : 
// // RESET        : Async reset
// DFT             :
// DFP             :
// VERIFICATION    :
// RELEASE HISTORY :
// $Id:
// *****************************************************************************
`timescale 1ps/1ps

(* dont_touch = "yes" *) 
module dff1 #(parameter BITWIDTH = 1) (
	input  			clk,
	input  [BITWIDTH-1:0]	din,
	output reg [BITWIDTH-1:0]	dout
);

always @(posedge clk) begin
 	dout   <= din;
end

endmodule










