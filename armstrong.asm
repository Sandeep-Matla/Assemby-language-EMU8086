;Sandeep Matla
; Arm strong

include 'emu8086.inc'

print 'Enter a number : '
;mov n , 370
call scan_num
printn
mov n,cx
mov bx,10
mov ax ,n

dig_count:
    cmp ax ,0
        JE end
    mov dx,0
    div bx
    inc dig
    jmp dig_count
end:
mov al,dig
print 'Digits: '
call print_num
printn
; Arm
mov ax,n
check:
    cmp ax,0
        JE check_arm
    mov dx,0
    div bx
    mov bx,ax
    mov ax,dx 
    mov cl , dig
    dec cl
    pow:
       cmp cl,0
        JE pow_end
       mul dl
       dec cl
       jmp pow
    pow_end:
    add sum,ax
    mov ax , bx
    mov bx,10
    jmp check

check_arm:
    mov ax ,n
    cmp sum,ax
        JE arm
    print 'Not an Armstrong'
    RET
arm:
    print 'ARM STRONG'
    RET

RET
define_scan_num
define_print_num
define_print_num_uns
sum dw 0 
n dw 0
dig db 0