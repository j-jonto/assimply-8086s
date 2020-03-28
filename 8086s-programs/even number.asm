.model small
.stack 100h
.data
x Db 40,22,5,9,11
o Db ?
e Db ?
.code
mov ax,@data
mov ds,ax

mov cl,5
lea si,x
back:
     mov al,[si]
     SHR AL,1
     JNC even
     jmp odd
even:
     inc dh
     inc si
     dec cl
     JNZ back
     jmp end
odd: 
     inc dl
     inc si
     dec cl
     JNZ back
     jmp end   
            
end:
mov o,dl
mov e,dh
mov ah,4ch
int 21h     

