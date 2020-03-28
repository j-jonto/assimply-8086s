.model small
.stack 100h
.data              
msg db 'x',5 DUP(' '),'y',15 DUP(' '),'OR (X,Y)',13,10
x1  db  ? ,5 DUP(' '),?,15 DUP(' '),?,13,10 
x2  db  ? ,5 DUP(' '),?,15 DUP(' '),?,13,10 
x3  db  ? ,5 DUP(' '),?,15 DUP(' '),?,13,10 
x4  db  ? ,5 DUP(' '),?,15 DUP(' '),?,13,10,'$' 

.code                         

mov ax,@data
mov ds,ax


mov ah,00h
or ah,30h
mov x1,ah
mov x1+6,ah
mov x1+16,ah
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