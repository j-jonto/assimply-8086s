.MODEL SMALL
.STACK 100H
.DATA
X DB 2,5,11,13,6

.CODE
MOV AX,@DATA
MOV DS,AX

LEA SI,X
MOV CX,5
BACK:
MOV AL,[SI]
SHR AL,1
JC A
INC DL  ;POSITIVE 
JMP B
A:
INC DH  ;NEGATIVE 
B:
INC SI
LOOP BACK
JMP END
END:

MOV AH,4CH
INT 21H 