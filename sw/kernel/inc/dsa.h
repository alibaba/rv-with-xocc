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

#ifndef DSA_H
#define DSA_H

#include "xocc_asm.h"
#include "qid.h"

/*
 * (rv_0 -> rv_N)
 */

//-------------------push cmd-------------------------
static inline void rv0_push_rv1_cmd(unsigned int cmd){
    unsigned int result;
    unsigned int ready = 0;
    FUNC_WRITE_CMD(result, cmd, IMM12(00, RV_0_QID_0));     //CMD width: 32, one write_cmd required
    do { 
        FUNC_PUSH_RDY(ready, 0, IMM12(00, RV_0_QID_0)); 
    } while (!ready); 
    FUNC_PUSH_CMD(result, 0, IMM12(00, RV_0_QID_0));
}

static inline void rv0_push_rv2_cmd(unsigned int cmd){
    unsigned int result;
    unsigned int ready = 0;
    FUNC_WRITE_CMD(result, cmd, IMM12(00, RV_0_QID_1)); 
    do { 
        FUNC_PUSH_RDY(ready, 0, IMM12(00, RV_0_QID_1)); 
    } while (!ready); 
    FUNC_PUSH_CMD(result, 0, IMM12(00, RV_0_QID_1));
}

//-------------------pop rsp-------------------------
static inline void rv0_pop_rv1_rsp(unsigned int *cmd){
    unsigned int result;
    unsigned int ready = 0;
    do {
        FUNC_POP_RDY(ready, 0, IMM12(00, RV_0_QID_0));
    } while (!ready);
    FUNC_POP_RSP(result, 0, IMM12(00, RV_0_QID_0));
    FUNC_READ_RSP(*cmd, result, IMM12(00, RV_0_QID_0));
}

static inline void rv0_pop_rv2_rsp(unsigned int *cmd){
    unsigned int result;
    unsigned int ready = 0;
    do {
        FUNC_POP_RDY(ready, 0, IMM12(00, RV_0_QID_1));
    } while (!ready);
    FUNC_POP_RSP(result, 0, IMM12(00, RV_0_QID_1));
    FUNC_READ_RSP(*cmd, result, IMM12(00, RV_0_QID_1));
}

/*
 * (rv_0 -> dsa)
 */
static inline void rv0_push_dsa_cmd(unsigned int w1, unsigned int w2, unsigned int w3){
    unsigned int result; 
    unsigned int ready = 0; 
    FUNC_WRITE_CMD(result, w1, IMM12(00, RV_0_QID_2));  //CMD width:96, three write_cmd required
    FUNC_WRITE_CMD(result, w2, IMM12(01, RV_0_QID_2)); 
    FUNC_WRITE_CMD(result, w3, IMM12(02, RV_0_QID_2)); 
    do { 
        FUNC_PUSH_RDY(ready, 0, IMM12(0, RV_0_QID_2)); 
    } while (!ready); 
    FUNC_PUSH_CMD(result, 0, IMM12(0, RV_0_QID_2));
}

static inline void rv0_pop_dsa_rsp(unsigned int *rsp){
    unsigned int result; 
    unsigned int ready = 0; 
    do {
        FUNC_POP_RDY(ready, 0, IMM12(00, RV_0_QID_2));  //RSP width:32
    } while (!ready);
    FUNC_POP_RSP(result, 0, IMM12(00, RV_0_QID_2));
    FUNC_READ_RSP(*rsp, result, IMM12(00, RV_0_QID_2));
}

/*
 * (rv_N -> rv_0)
 */
static inline void rvn_pop_rv0_rsp(unsigned int *cmd){
    unsigned int result; 
    unsigned int ready = 0; 
    do {
        FUNC_POP_RDY(ready, 0, IMM12(00, RV_QID_0));
    } while (!ready);
    FUNC_POP_RSP(result, 0, IMM12(00, RV_QID_0));
    FUNC_READ_RSP(*cmd, result, IMM12(00, RV_QID_0));
}

static inline void rvn_push_rv0_cmd(unsigned int cmd){
    unsigned int result; 
    unsigned int ready = 0; 
    FUNC_WRITE_CMD(result, cmd, IMM12(00, RV_QID_0)); 
    do { 
        FUNC_PUSH_RDY(ready, 0, IMM12(00, RV_QID_0)); 
    } while (!ready); 
    FUNC_PUSH_CMD(result, 0, IMM12(00, RV_QID_0));
}

/*
 * (rv_N -> dsa)
 */
static inline void rvn_push_dsa_cmd(unsigned int w1, unsigned int w2, unsigned int w3){
    unsigned int result; 
    unsigned int ready = 0; 
    FUNC_WRITE_CMD(result, w1, IMM12(00, RV_QID_1)); 
    FUNC_WRITE_CMD(result, w2, IMM12(01, RV_QID_1)); 
    FUNC_WRITE_CMD(result, w3, IMM12(02, RV_QID_1)); 
    do { 
        FUNC_PUSH_RDY(ready, 0, IMM12(0, RV_QID_1)); 
    } while (!ready); 
    FUNC_PUSH_CMD(result, 0, IMM12(0, RV_QID_1));
}

static inline void rvn_pop_dsa_rsp(unsigned int *rsp){
    unsigned int result; 
    unsigned int ready = 0; 
    do {
        FUNC_POP_RDY(ready, 0, IMM12(00, RV_QID_1));
    } while (!ready);
    FUNC_POP_RSP(result, 0, IMM12(00, RV_QID_1));
    FUNC_READ_RSP(*rsp, result, IMM12(00, RV_QID_1));
}

#endif
