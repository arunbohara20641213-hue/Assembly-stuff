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

;Start writing your code here
MVI A, 05H
SUI 08H
CMA
INR A
HLT

