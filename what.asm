;Add two 8bit numbers and store carry in a seprate register

JMP START

;data

;code
START: NOP

;Start writing your code here

MVI A, 0F0H
MVI B, 20H
MVI D, 00H
ADD B
MOV C, A
JNC DONE
INR D
DONE: HLT



;standard way to convert a two's complement negative number into its positive magnitude absolute negative
JMP START

;data

;code
START: NOP

MVI A, 05H
SUI 08H
CMA
INR A
HLT

;if carry = 1 jc jump  A= small  skip CMA

JMP START

;data

;code
START: NOP

;Start writing your code here
MVI A, 06H
SUI 07H
JC SKIP ;using jc instead of JNC for JNC HUMPS WHEN carry = 0
CMA
INR A
HLT

SKIP:
CMA 
INR A 
HLT

;increment a 16 bit number stored in H-L pair

JMP START

;data

;code
START: NOP

;Start writing your code here
LXI H, 01H    ;LXI instead of MVI beacuse LXI stores 16 bit while the other is only 8 bit storaage
INR L
JNZ DONE ;JNZ JUMP IF NOT ZERO 
INR H

DONE:
HLT

;add two 16 bit

JMP START

;data

;code
START: NOP

LXI H, 3000H
LXI B, 2000H
DAD B ; use DAD for EFFICENCY
HLT





