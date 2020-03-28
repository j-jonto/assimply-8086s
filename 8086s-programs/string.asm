.model small
.stack 100h
.data
String1  DB   'Helloo'
String2  DB    5 Dup( )   
.code 
mov ax,@data
mov ds,ax
mov es,ax

lea si,string1
mov ax,[si]
lea di,string2 
mov cx,6
aa:
 movsb   

loop aa

