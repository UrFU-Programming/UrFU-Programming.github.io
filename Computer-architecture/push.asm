rd #011
out 11
wrsp #100

rd #2
wr R0
rd #4
wr R1

call .f1

call .printf

rd #32
out 10

rd #5
wr R0
rd #6
wr R1
call .f1
call .printf

hlt

.f1:
rd R0
add #10
wr R0
mul R0
mul R0
wr R0
rd R1
div #2
add R0
ret

.printf: ; Input in Acc
wr 180; acc->180
rd 180

; test for sign
jns .printf_no_sign

rd #45
out 10

rd #0
sub 180
wr 180

.printf_no_sign:

divi #1000 
wr 181; ostatok
add #48
out 10

rd 181
muli #1000
wr 183
rd 180
sub 183
wr 186
div #100
wr 184
add #48
out 10

rd 184
mul #100
wr 187
rd 186
sub 187
wr 188
div #10
wr 189
add #48
out 10

rd 189
mul #10
wr 191
rd 188
sub 191
add #48
out 10

ret 