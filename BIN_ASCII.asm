.model small
.data

message db 'enter the binary number: $'
message1 db 10,13, 'ascii char is $'
.code
.startup

mov ah,09h
mov dx, offset message
int 21h

mov bl,0

mov cl,8
loopover:
mov ah,01h
int 21h  
sub al,48 
shl bl,1
add bl,al
loop loopover

mov ah,09h
mov dx, offset message1
int 21h

mov ah,02h
mov dl,bl
int 21h 
mov ah, 4ch
int 21h

end
.exit
