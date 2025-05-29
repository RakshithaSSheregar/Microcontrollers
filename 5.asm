AREA Program, CODE, READONLY
ENTRY
LDR
R0, MEMORY
; load the address of the lookup table
LDR
R4, RESULT
LDRH R1, [R0]
ADD R0,R0,#2
LDRH R5, [R0]
MOV R2, R1
; load the count
LOOP
CMP R2, #1
; is the count is zero
BEQ DONE
ADD R0,R0,#2
LDRH R3,[R0]
SUB R2,R2,#1
CMP R5,R3
BHI
LOOP (For smallest—BLS)
MOV R5,R3
B
LOOP
DONE
STR
R5,[R4]
HERE
B
HERE
MEMORY
DCD
0x40000000
RESULT
DCD
0x40000015
END