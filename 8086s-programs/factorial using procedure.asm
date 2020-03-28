.model small
.stack 100h
.data 
X DB 1,2,3,4,5
Y DW 5 DUP(' ')
                      
.CODE
MOV AX,@DATA
MOV DS,AX  

  LEA SI,X
  LEA DI,Y
  MOV CH,5
BA:  MOV CL,[SI]
  CALL PROD
  DEC CH
  JNZ BA
  MOV AH,4CH
  INT 21H


PROD PROC
    MOV AL,1
    MOV DL,1
AA: MUL DL
    INC DL
    DEC CL
    JNZ AA
    MOV [DI],AX
    INC SI
    ADD DI,2
    RET
    PROD ENDP
    
END:
  MOV AH,4CH
  INT 21H
