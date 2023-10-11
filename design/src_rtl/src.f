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

+incdir+$DESIGN_SRC/include/
-f $DESIGN_SRC/cpu/cpu.f
-f $DESIGN_SRC/util/util.f
-f $DESIGN_SRC/mem_subsys/mem_subsys.f
-f $DESIGN_SRC/xbar/xbar.f
$DESIGN_SRC/top/soc_top.v
$DESIGN_SRC/rv_cluster/rv_cluster_top.v

