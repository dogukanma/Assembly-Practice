org 100h
   
mov ax, number ;ax = number
mov bx, 2      ;bx = 2
div bx         ;ax = al/bl
mov cx, ax     ;cx = number/2
mov ax, 0      ;ax = 0 
mov dx, 0      ;dx = 0

loop1:
mov dx, 0
mov ax, number         
div bx
cmp dx, 0
je squarecheck
inc bx
loop loop1

end:
ret


squarecheck:
cmp bx, ax
je squaretrue
inc bx
jmp loop1

squaretrue:
mov issquare, 1
mov sqrt, bx


 
   
ret
number dw 16
sqrt dw 0
issquare db 0
