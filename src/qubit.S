# AVR Q7 Hadamard
#include <avr/io.h>
.global hadamard_q7
hadamard_q7:
    mov r30, r24
    mov r31, r25
    ld  r18, Z
    ldd r19, Z+1
    ldi r20, 91
    muls r18, r20
    mov r21, r1
    muls r19, r20
    add r21, r1
    asr r21
    st  Z, r21
    muls r18, r20
    mov r21, r1
    muls r19, r20
    sub r21, r1
    asr r21
    std Z+1, r21
    clr r1
    ret
