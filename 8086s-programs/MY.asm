.model small
.stack 200h
.data
A DB 34H
B DW 0FF3AH
C DD 3331FFBBH
MES DB 'CONTROL '
    DB 'DEPARTMENT' ,10,13 ,'$'
ARRAY DB 10,20,30,40,50
.CODE
MOV AX,@DATA
MOV DS,AX
MOV AL,BYTE PTR B
MOV AX,WORD PTR C
CWD
ADD AL,DL
MOV BL,23H
ADC BL,0AFH
DEC BL
INC AL
SUB AX,BX
CBW
PUSH 23H
PUSH DX
;MOV CL,A
PUSH 34H
POP CX
MOV AH,09H
MOV DX,OFFSET MES
INT 21H
MOV AH,4CH
INT 21H
RET
END
