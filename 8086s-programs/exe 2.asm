.model small
.stack 100h
.data              
msg db 'x',10 DUP(' '),'NOT x',13,10
x1 db ?,20 DUP(' '),?,13,10
x2 db ?,20 DUP(' '),?,13,10,'$' 
.code
mov ax,@data
mov ds,ax
mov ah,00h
or ah,30h
mov x1,ah
not ah
and ah,01h
or ah,31h      
mov x1+13,ah
mov x2,ah
not ah
and ah,00h
or ah,30h
mov x2+13,ah
mov ah,09h
lea dx,msg    
int 21h
mov ah,4ch
int 21h
end