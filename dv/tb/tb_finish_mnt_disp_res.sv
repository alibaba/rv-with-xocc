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


// Display Simulation Results
always @(posedge clk)
begin
    fork

       begin 
            @(pe_0_0_finish_flag == 1'b1);
            if(pe_0_0_rv_0_pass) begin
                $display("**********************************************");
                $display("*    PE_0_0 has finished successfully        *");
                $display("**********************************************");
                #10;
            end else if(pe_0_0_rv_0_fail) begin
                $display("**********************************************");
                $display("*        Error occured in PE_0_0             *");
                $display("**********************************************");
                #10;
            end
        end

    join

    if (pe_0_0_rv_0_pass) begin
        $display("**********************************************");
   	    $display("*    Simulation finished successfully        *");
   	    $display("**********************************************");
    end else begin
        $display("**********************************************");
   	    $display("*    Simulation finished with errors         *");
   	    $display("**********************************************");
    end

    $finish;
end
