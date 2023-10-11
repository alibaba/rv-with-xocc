// 
//Copyright (c) 2021, Alibaba Group;
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.
//

#include "func.h"
#include "xocc_asm.h"
#include "dsa.h"

int main() {
    int cmd;
    // rv_0 -> rv_2
    rvn_pop_rv0_rsp(&cmd);

    if (cmd == 0x23456781) {
        rvn_push_dsa_cmd(cmd, 0x0, 0x0);
        rvn_push_rv0_cmd(0x2334);
    } else {
        rvn_push_rv0_cmd(0xdead);
    }

    return 0;
}

