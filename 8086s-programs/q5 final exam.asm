.MODEL SMALL
.STACK 100H
.DATA
X DB 2,5,11,13,6,8,9
msg1 db 'the odd numbers='
oddv db ?,13,10
msg2 db 'the even numbers='
evenv db ?,13,10,'$'
.CODE
MOV AX,@DATA
MOV DS,AX

lea si,x
call odd
lea si,x
call even
call print
jmp end

odd proc
    mov cx,7
   mm: mov al,[si]
    
    shr al,1 
    jnc aa
    inc oddv
    aa:inc si
    loop mm
    ret
odd endp
even proc
     mov cx,7
     zz: mov al,[si]
    
     shr al,1 
     jc bb
     inc evenv
     mov bh,evenv 
     or bh,30h 
     mov evenv,bh
     
     bb:inc si
     loop zz
     ret
even endp
print proc
    mov ah,9
    lea dx,msg1
    int 21h
    ret
print endp 
end:
mov ah,4ch
int 21h
end