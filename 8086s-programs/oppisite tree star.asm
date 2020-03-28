.MODEL SMALL
.STACK 100H
.DATA      

x db 2 
.CODE 
MOV AX,@DATA
MOV DS,AX 
mov cl,7
b:
mov ch,cl

aa:         ;for print #
mov dl,'#'  ;
mov ah,2    ;
int 21h     ;
dec ch      ;
jnz aa      ;

mov dl,10   ;from 28 to 33 for new line
mov ah,2    ;
int 21h     ;
mov dl,13   ;
mov ah,2    ;
int 21h     ;
mov dh,x
mov bl,1
sub dh,bl
cmp dh,0
jz aa 
g:          
mov dl,0    ;for print space
mov ah,2    ;
int 21h     ;
dec dh      ;
jnz g       ;

sub cl,2
inc x
cmp cl,-1 
jnz b    
MOV AH,4CH
INT 21H

