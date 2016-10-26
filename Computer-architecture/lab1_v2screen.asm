;rdi #2744
;jmp .printf

in
wr 150
add #21
js .func2

.func1:
rd 150
add #22
js .fail

rd 150
sub #22
jns .fail

rd 150
add #4
wr 151
mul 151
mul 151
out 
jmp .printf
hlt

.func2:
rd 150
add #53
js .fail
sub #37 ; 15 - 53
jns .fail

rd 150
mul #3
add #20
wr 152
rdi #2500
wr 153
rd 153
div 152
out
jmp .printf
hlt

.fail:
rd #0
out
jmp .printf

.printf:
wr 180; acc->180
rd #011
out 11
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

hlt 