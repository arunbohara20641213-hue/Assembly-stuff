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


;subtraction of 16 bits in 8085
LXI H, 9BDFH    ; HL = 9BDFH 
LXI B, 89ABH    ; BC = 89ABH 


MOV A, L        ; A = DFH
SUB C           ; A = DF - AB = 34H  → CY=0
MOV L, A        ; L = 34H


MOV A, H        ; A = 9BH
SBB B           ; A = 9B - 89 - CY = 12H
MOV H, A        ; H = 12H

HLT             

;;load 16 bit number stored in memory loaction 2000 and stooere its 2s complimeeeent in memiryyyyyyyyy locatioaon 2010



LXI H, 3572H
mov A,L
sub E
mov L,A
mov A,H
sbb D
mov H,A
SHLD 2010H
HLT

