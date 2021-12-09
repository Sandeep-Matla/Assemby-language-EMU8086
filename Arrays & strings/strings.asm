;Sandee matla
;Strings
include 'emu8086.inc'

lea si , str
mov ah , 9
mov dx, offset str
int 21h

RET

str db "Hello world ,The good thing about TIME is it increases$"


; INT 21h __ (interrupt 21h)
; if " AH = 9 "
;    prints the the string in DS:DX
;   from Data segment DS and by increasing by offset upto '$' encountered

; if "AH = 2"
;   prints the char in dx;
; if "AH = 1"
;   asks a char input from Standard input , result is stored in AL.