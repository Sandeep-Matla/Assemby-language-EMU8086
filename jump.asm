; Jump EXample

include 'emu8086.inc' 
       
  ORG 100h
MOV AL, 5
CMP AL, 5
JE  label1
PRINT 'AL is not equal to 5.'
JMP exit
label1:
   PRINT 'AL is equal to 5.'
exit:
   RET