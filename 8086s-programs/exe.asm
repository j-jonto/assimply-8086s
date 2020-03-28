.model small
.stack 200h  

.data

n1 db 11h
n2 db 12h
res db ?
rem db ?

.code
mov ax,@data
mov ds,ax  

MOV AX, 203   ; AX = 00CBh
MOV BL, 4
DIV BL

        

mov ah,4ch
int 21h
end          
ret                            