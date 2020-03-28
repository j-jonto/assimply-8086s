org 100h
.data
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
jnc back
mov al,[si]
back:
inc si
dec cl
jnz again
mov x2,al
ret