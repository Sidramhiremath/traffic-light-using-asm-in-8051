org 0000h
here:
clr p1.0;red
setb p1.1
setb p1.2
lcall delay
setb p1.0
clr p1.1
setb p1.2
lcall delay2
setb p1.0
setb p1.1
clr p1.2
lcall delay
sjmp  here
org 0050h
delay:
mov tmod,#00000001b
mov r0,#151d
back:
mov th0,00h
mov tl0,00h
setb tr0
djnz r0,back
ret
org 0030h
delay2:
mov tmod,#00010000b
mov r1,#76d
hj:
mov th1,00h
mov th1,00h
setb tr1
djnz r1,hj
ret




