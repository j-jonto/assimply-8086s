.model small
.stack 100h

.data 
MSG DB 'THE SUM: ',?,
m dw ?,'$'
ar1 db 12,44,32
ar2 db 32,54,12
s1 dw 3 dup('0')
s2 db 3 dup('0')
sumar1 dw ?
sumar2 db ?

.code  
mov ax,@data
mov ds,ax 
lea si,ar1
lea di,ar2
lea bx,s1
mov cl,3
back:
    mov al,[si]
    mov dl,2
    mul dl
    mov [bx],ax
    inc si
    inc bx
    inc bx
    dec cl
    jnz back 
    mov ax,s1
    add ax,s1+2
    adc ax,s1+4
    mov sumar1,ax
lea si,ar2
mov bx,[di]
mov cl,3
reapeat:
    mov al,0ffh
    mov ah,al
    xor ah,[si]  
    mov dl,[si]
    mov [di],ah
    inc si
    inc di
    dec cl
    jnz reapeat 
    mov al,s2
    add al,s2+2
    adc al,s2+4
    mov sumar2,al
    mov ax,sumar1 
or ax,4230h
mov m,ax    
MOV AH,09H
LEA DX,MSG
INT 21H
                    
mov ah,4ch
int 21h 
end                