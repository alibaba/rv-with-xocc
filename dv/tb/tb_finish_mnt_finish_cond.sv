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

// Monitor Finish Condition for pe_0_0_rv_0 
reg pe_0_0_rv_0_pass;
reg pe_0_0_rv_0_fail;
reg pe_0_0_finish_flag;

reg [31:0]  pe_0_0_rv_0_cpu_addr;
reg [1:0]   pe_0_0_rv_0_cpu_trans;
reg         pe_0_0_rv_0_cpu_write;
wire [31:0] pe_0_0_rv_0_cpu_wdata;

always @(posedge clk)
begin
    pe_0_0_rv_0_cpu_trans[1:0] <= `PE_0_0_RV_0.biu_pad_htrans[1:0];
    pe_0_0_rv_0_cpu_addr[31:0] <= `PE_0_0_RV_0.biu_pad_haddr[31:0];
    pe_0_0_rv_0_cpu_write      <= `PE_0_0_RV_0.biu_pad_hwrite;
end

assign pe_0_0_rv_0_cpu_wdata[31:0] = `PE_0_0_RV_0.biu_pad_hwdata[31:0];

always @(posedge clk or negedge sys_rstn)
begin
    if(!sys_rstn) 
    begin
        pe_0_0_rv_0_pass <= 1'b0;
        pe_0_0_rv_0_fail <= 1'b0;
        pe_0_0_finish_flag <= 1'b0;
    end
    else if((pe_0_0_rv_0_cpu_trans[1:0] == 2'b10) &&
            (pe_0_0_rv_0_cpu_addr[31:0] == `MAILBOX_ADDR) &&
             pe_0_0_rv_0_cpu_write &&
            (pe_0_0_rv_0_cpu_wdata[31:0] == `PASS_FLAG ))
    begin
        pe_0_0_rv_0_pass <= 1'b1;
        pe_0_0_finish_flag <= 1'b1;
    end
    else if((pe_0_0_rv_0_cpu_trans[1:0] == 2'b10) &&
            (pe_0_0_rv_0_cpu_addr[31:0] == `MAILBOX_ADDR) &&
             pe_0_0_rv_0_cpu_write &&
            (pe_0_0_rv_0_cpu_wdata[31:0] == `FAIL_FLAG))
    begin
        pe_0_0_rv_0_fail <= 1'b1;
        pe_0_0_finish_flag <= 1'b1;
    end
    else if((pe_0_0_rv_0_cpu_trans[1:0] == 2'b10) &&
            (pe_0_0_rv_0_cpu_addr[31:0] == `MAILBOX_ADDR) &&
             pe_0_0_rv_0_cpu_write)
    begin
        $write("%c", pe_0_0_rv_0_cpu_wdata[7:0]);
    end
end
