org 100h
.data
x1 db 10,13,10,1,15
x2 db 2,1,54,10,4
x3 dw 5 dup(?)

.code
mov cl,0
lea si,x1
lea di,x2
lea bx,x3 
mov ax,00h
Back:
 
mov al,[si]
Imul [di]
mov [bx],ax
Inc si
Inc di
add bx,2
inc cl
cmp cl,5
Jz end
jmp Back


end:
ret 
