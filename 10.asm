area demo,code,readonly
start
;disabling
mrs r0, cpsr ;11010011=D3
BIC r0, r0, #0x80 ;01010011=53
msr cpsr_c, r0;
;enabling
mrs r0, cpsr ;
ORR r0, r0, #0x80
msr cpsr_c, r0;
;stopping
bx lr
End