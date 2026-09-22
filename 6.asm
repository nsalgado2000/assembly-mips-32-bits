# if (i == j) { f = g + h; } else { f = g - h; } 
# f = $s0 
# g = $s1 
# h = $s2 
# i = $s3 
# j = $s4

bne $s3, $s4, Senao
add $s0, $s1, $s2
j Kitana

Senao: 
        sub $s0, $s1, $s2


Kitana: 