;Perfect NUmber

include 'emu8086.inc'

org 100h

call scan_num
printn
mov n,cx

mov bx,0

mov cx,0

Check:  

    add cx,1    
    cmp cx,n
        JE check_Perfect
        
        mov ax,n   
        mov dx,0
        div cx
        
        cmp dx,0
            JE fact
            
            jmp check
            

Check_Perfect:

    cmp bx, n
        JE perfect
    
        print 'Non perfect'
        RET
    
fact:
    add bx,cx
    jmp check
    
perfect:

    print 'Perfect Number'
    
    ret
    
    
n dw 0

define_scan_num

