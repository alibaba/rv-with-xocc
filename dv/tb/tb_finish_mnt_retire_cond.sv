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

// Monitor No Inst Retired for pe_0_0_rv_0
reg [31:0] pe_0_0_rv_0_retire_inst_in_period;
reg [31:0] pe_0_0_rv_0_cycle_count;

always @(posedge clk or negedge sys_rstn)
begin
    if(!sys_rstn)
        pe_0_0_rv_0_cycle_count[31:0] <= 32'b1;
    else 
        pe_0_0_rv_0_cycle_count[31:0] <= pe_0_0_rv_0_cycle_count[31:0] + 1'b1;
end

`ifndef PCIE_TEST
always @(posedge clk or negedge sys_rstn)
begin
    if(!sys_rstn)
    begin
        pe_0_0_rv_0_retire_inst_in_period[31:0] <= 32'b0;
    end
    else if((pe_0_0_rv_0_cycle_count[31:0] % `LAST_CYCLE) == 0)
    begin
        if(pe_0_0_rv_0_retire_inst_in_period[31:0] == 0)
        begin
            $display("*************************************************************");
            $display("* Error: There is no instructions retired in the last %d cycles! *", `LAST_CYCLE);
            $display("*              Simulation Fail and Finished!                *");
            $display("*************************************************************");
            #10;
            FILE = $fopen("run_case.report","w");
            $fdisplay(FILE,"TEST FAIL");   
            $finish;
        end
        pe_0_0_rv_0_retire_inst_in_period[31:0] <= 32'b0;
    end
    else if(`PE_0_0_RV_0_AHB.biu_pad_retire)
        pe_0_0_rv_0_retire_inst_in_period[31:0] <= pe_0_0_rv_0_retire_inst_in_period[31:0] + 1'b1;
end
`endif
