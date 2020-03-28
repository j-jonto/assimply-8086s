.MODEL SMALL
.STACK 100H
.DATA      

x db 4 
.CODE 
MOV AX,@DATA
MOV DS,AX 
mov cl,1 
mov bh,1
b:
mov ch,cl
mov bl,5
sub bl,x
cmp bl,0
jz aa 
g:
mov dl,0
mov ah,2
int 21h
dec bl
jnz g
aa:
mov dl,'#'
mov ah,2
int 21h
mov dl,0
mov ah,2
int 21h
dec ch 
jnz aa 

mov dl,10   ;from 28 to 33 for new line   
int 21h     ;
mov dl,13   ;   
int 21h     ;
inc cl 
cmp cl,3
jz j
h:
inc x
cmp x,6
jz n
z:
inc bh
cmp bh,6 
jnz b    
MOV AH,4CH
INT 21H
n:
mov x,4
jmp z
j:
mov cl,1
jmp h