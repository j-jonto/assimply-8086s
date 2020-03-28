.model small
.stack 100h
.data 
n1 db 0ffh
n2 db 12h
res db ?
rem db ?
.code

mov ax,@data
mov ds,ax

mov ax,00h
mov al,n1
add al,n2
adc ah,00h
mov bl,2h
div bl
mov ah,4ch
int 21h
end