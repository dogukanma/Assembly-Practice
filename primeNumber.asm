org 100h
  
mov ax, number
mov bx, 2
div bx
mov cx, ax
mov dx, 0

loop1:
mov dx, 0
mov ax, number
div bx
cmp dx, 0
je end
inc bx
loop loop1

cmp dx, 0
jne primeend

end:
mov isprime, 0
ret         

primeend:
ret   
  
ret
number dw 7005
isprime db 1