;GCD 
include 'emu8086.inc'
print 'Enter numbers : '
printn

call scan_num
printn
mov n1,cx
;mov cx,15 
call scan_num
printn
mov n2,cx 

min_n:
    mov ax,n2
    cmp n1,ax
        JL min_n1
     mov min,ax
     jmp min_end
     min_n1:
        mov ax,n1
        mov min ,ax
min_end:

GCD:
    mov ax, n1
    mov dx,0
    div min
    cmp dx,0
        JNE not_divisor
    mov ax, n2
    mov dx,0
    div min
    cmp dx,0
        JE divisor_2
    not_divisor:
    dec min
    jmp GCD
     
divisor_2:
    print 'Gcd : '                    
    mov ax, min
    call print_num
    ret
ret

n1 dw 0
n2 dw 0
min dw 0  

define_scan_num
define_print_num
define_print_num_uns
    


