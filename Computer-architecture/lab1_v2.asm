in
wr 50
add #21
js 17

rd 50
add #22
js .fail

rd 50
sub #22
jns 33

rd 50
add #4
wr 51
mul 51
mul 51
out 
hlt

rd 50
add #53
js 33
sub #37 ; 15 - 53
jns 33

rd 50
mul #3
add #20
wr 52
rdi #2500
wr 53
rd 53
div 52
out
hlt

.fail:
rd #0
out
hlt 