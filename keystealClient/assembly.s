//
//  assembly.s
//  keystealClient
//
//  Created by Mila Masaya on 11/27/22.
//  Copyright © 2022 Mila Masaya. All rights reserved.
//

.intel_syntax noprefix

.text

#define DEFINE_MACH_TRAP(name, number) .globl name; name: mov rax, 0x1000000+number; mov r10, rcx; syscall; ret

DEFINE_MACH_TRAP(_my_mach_msg_trap, 31)
