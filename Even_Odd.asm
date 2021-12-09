;Number in al is even or odd

include 'emu8086.inc'
call scan_num
mov al, cl
mov bl, 2
div bl

cmp ah ,0
JE even

print 'AL contain an Odd'
ret
even:
    print 'AL contain Even' 
    RET      

define_scan_num
