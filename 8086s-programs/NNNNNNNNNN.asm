.MODEL SMALL
.STACK 100H
.DATA      
X DB -5,-30,15,30,2,-35
MIN DB ?



.CODE 
MOV AX,@DATA
MOV DS,AX
       
        MOV CL,6
        LEA SI,X  
        MOV AL,[SI+1]   
  AGAIN:
        CMP AL,[SI]
        JL BACK
        MOV AL,[SI]
   BACK:  
        INC SI
        DEC CL
        JNZ AGAIN
        JMP END 
       
      
      END:
        MOV MIN,AL      
        MOV AH,4CH
        INT 21H


