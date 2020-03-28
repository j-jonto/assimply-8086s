.stack 100h 
.data
f dd ?
.code 
mov ax,@data
mov ds,ax
 
mov ax,0014h 
mov dx,3261h
mov bx,0026h
div bx

mov ah,4ch
int 21h
end
 