;Sandeep Matla
; LCM
include 'emu8086.inc'
call scan_num
printn
;mov cx , 5
mov n1,cx
;mov cx, 6
call scan_num
printn
mov n2,cx

mov cx ,0

maximum: 
    mov ax, n2
    cmp n1,cx
    JG max_n1
    mov max,ax
    jmp max_end
    max_n1:
        mov ax , n1
        mov max,ax

max_end:        
mov ax , max
lcm:
    mov ax , max
    mov dx,0
    div n1
    cmp dx,0
        JE mult_1
    inc max
    jmp lcm

mult_1:
    mov ax, max 
    mov dx , 0
    div n2
    cmp dx,0
        JE mult_2 
   inc max 
   jmp lcm
mult_2:
    print 'Lcm is :'
    mov ax,max
    call print_num
   
RET 

n1 dw 0
n2 dw 0
max dw 0
  
define_scan_num
define_print_num
define_print_num_uns

  
    