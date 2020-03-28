.MODEL SMALL
.STACK 100H
.DATA      

x dw 5
y db ? 
.CODE 
MOV AX,@DATA
MOV DS,AX 
mov cl,1      
b:
mov ch,cl
mov bx,5
sub bx,x
cmp bx,0
jz aa 
g:
mov dl,0
mov ah,2
int 21h
dec bx
jnz g
aa:
mov dl,'#'
mov ah,2
int 21h
mov ch,1
dec ch 
jnz aa 

mov dl,10   ;from 28 to 33 for new line
mov ah,2    ;
int 21h     ;
mov dl,13   ;
mov ah,2    ;
int 21h     ;
inc cl
dec x
cmp cl,6 
jnz b    
MOV AH,4CH
INT 21H

