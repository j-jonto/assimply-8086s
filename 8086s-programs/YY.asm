.MODEL SMALL
.STACK 100H
.DATA
X DB 2,5,11,13,6 

Y1 DB 'THE EVEN NUM IS '
X1 DB ?
Y2 DB 10,13,'THE ODD NUM IS '
X2 DB ?,'$'

EVEN DB ? 
ODD DB ?

.CODE
MOV AX,@DATA
MOV DS,AX

LEA SI,X
LEA DI,EVEN
LEA BX,ODD
MOV CX,5
BACK: 
MOV AH,[SI]
MOV AL,[SI]
SHR AL,1
JC A
INC DL  ;EVEN NU
MOV [DI],AH  
INC DI
JMP B
A:
INC DH  ;ODD NU
MOV [BX],AH 
INC BX 
B:
INC SI
LOOP BACK
JMP END

END: 
OR DL,30H
MOV X1,DL
OR DH,30H
MOV X2,DH 
MOV AH,9H
LEA DX,Y1
INT 21H

MOV AH,4CH
INT 21H 