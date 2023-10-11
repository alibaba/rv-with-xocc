# 
#Copyright (c) 2021, Alibaba Group;
#Licensed under the Apache License, Version 2.0 (the "License");
#you may not use this file except in compliance with the License.
#You may obtain a copy of the License at

#   http://www.apache.org/licenses/LICENSE-2.0

#Unless required by applicable law or agreed to in writing, software
#distributed under the License is distributed on an "AS IS" BASIS,
#WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#See the License for the specific language governing permissions and
#limitations under the License.
#

## Path
setenv PRJ_ROOT `pwd`
setenv SW_PATH ${PRJ_ROOT}/sw/
setenv DV_TOP ${PRJ_ROOT}/dv/
setenv DESIGN_TOP ${PRJ_ROOT}/design/
setenv DESIGN_SRC ${PRJ_ROOT}/design/src_rtl
setenv AXI_PATH ${DESIGN_SRC}/xbar/
setenv AXI_COMMON_CELL_PATH ${AXI_PATH}/common_cells
setenv TESTCASE_PATH ${PRJ_ROOT}/dv/testcase/
setenv WORKDIR_PATH ${PRJ_ROOT}/dv/workdir/
setenv ASMLIB_PATH ${PRJ_ROOT}/sw/lib/asm_lib/
setenv CLIB_PATH ${PRJ_ROOT}/sw/lib/clib/
setenv SWLIB_PATH ${PRJ_ROOT}/sw/lib/
setenv SW_INCLUDE ${PRJ_ROOT}/sw/kernel/inc/

## Toolchain
# example:
# setenv TOOL_EXTENSION /tools/riscv/riscv64-elf-x86_64/bin

## Alias
alias run_case 'python ${DV_TOP}/script/run_case.py'
alias dwk   'cd ${WORKDIR_PATH}; ls -F'
alias dtc   'cd ${TESTCASE_PATH}; ls -F'
alias dtb   'cd ${DV_TOP}/tb/; ls -F'
alias dsc   'cd ${DV_TOP}/script/; ls -F'
alias drt  'cd ${PRJ_ROOT}/; ls -F'
alias dsw  'cd ${PRJ_ROOT}/sw/; ls -F'
alias dd  'cd ${PRJ_ROOT}/design/; ls -F'
alias dsrc  'cd ${PRJ_ROOT}/design/src_rtl/; ls -F'
alias dt    'cd ${PRJ_ROOT}/design/src_rtl/top/; ls -F'

alias run_comp 'dwk && rm -rf d_smoke_test_* && run_case -t smoke_test -ns -nc'
alias run_smoke 'run_case --opt --update -t smoke_test | tee run_smoke.log'
alias run_regression 'dtc && cd regression && python3 regression.py'
alias vd 'verdi -ssf top_debug.vf &'

## EDA Tools
# addd your eda related path here


