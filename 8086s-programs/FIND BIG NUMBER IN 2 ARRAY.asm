.MODEL SMALL
.STACK 100H
.DATA      
X DB 53,44,34,61,41 
Y DB 55,89,50,32,31
BIG DB 5 DUP(' ')
 
.CODE 
MOV AX,@DATA
MOV DS,AX
       
        MOV CL,5
        LEA SI,X 
        LEA DI,Y
        LEA BX,BIG
       
        MOV AH,0
BACK:   MOV AL,[SI]
        MOV AH,[DI]
        CMP AL,AH 
        JC A
        MOV [BX],AL 
        JMP B
     A: MOV [BX],AH 
     B: INC SI
        INC DI
        INC BX
        DEC CL
        JNZ BACK
        JMP END
      
    END:    
        MOV AH,4CH
        INT 21H


