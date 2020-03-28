.model small
.stack 100h

.data
x1 db 32

.code
mov ax,@data                                               
mov ds,ax

mov ax,00
mov cl,8
mov al,4fh

back:
  Rol al,1
  jnc reapeat
  inc bl
reapeat:
  dec cl 
  cmp cl,0
  jnz back 
mov ah,4ch
int 21h