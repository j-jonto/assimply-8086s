org 100h
.data  
mes db 'the small number: '
x3 db ? ,'$'

x1 db 15,20,2,90,45
x2 db ?

.code
mov ax,@data
mov ds,ax       

mov cl,4h 
mov al,x1
lea si,x1+1 
again: 
cmp al,[si]
jc back
mov al,[si]
back:
inc si
dec cl
jnz again
mov x2,al
mov x3,al
or al,30h
mov x3,al  
lea dx,mes
mov ah,9h

int 21h                      
mov ah,4ch
int 21h
end