;Sandeep Matla
;string poilindrome
include 'emu8086.inc'
lea si,a

str_end:
    cmp [si+1],'$'
        JE end
    inc si
    jmp str_end
end:
    lea di,a
Poli_check:
    cmp di,si
        JG poli
    mov al,[si]
    cmp [di],al
        JNE not_poli
    
    inc di
    dec si
    
    jmp poli
    
poli:
    print 'polindrome'
    ret
not_poli:
    print 'Not poli'
    
RET
a db 'racecar$'