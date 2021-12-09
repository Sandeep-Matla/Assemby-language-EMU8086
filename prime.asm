;prime 

include 'emu8086.inc'
print 'ENter num : '
printn
call scan_num
printn
mov cl,11
mov bl,2
mov al,cl
div bl
mov dl,al
inc dl
check:
    cmp bl,dl
        JE prime
    mov ax,cx
    div bl
    cmp ah,0
        JE non_prime
    inc bl
    jmp check

prime:
    print 'Prime'
    ret
non_prime:
    print 'Non _prime'
    RET
    
define_scan_num
    
    