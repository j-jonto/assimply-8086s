.model small
.stack 100h
.data

m1 db 'found',13,10,'$'
m2 db 'No found s',13,10,'$'  
String1  DB   'Honbs'
String2  DB    5 Dup( ) 
.code 
mov ax,@data
mov ds,ax
mov es,ax
mov ax,00
lea si,string1
lea di,string2 
mov cx,5
rep movsb 
lea di,string2
mov al,'s'
mov cx,5
repne scasb
jz bb
cmp cx,0
jz aa
bb:
     mov ah,9
     lea dx,m1
     int 21h
     jmp finish
 
aa:  mov ah,9
     lea dx,m2
     int 21h
     jmp finish

finish: 
end 