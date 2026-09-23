f = (g & h) | i;

# f = (g &amp; h) | i; 
# f = $s0, g = $s1, h = $s2, i = $s3

add $t1, $zero, $zero
and $t1, $s1, $s2
or $t1, $t1, $s3
add s0, $t1, $zero

ou 

add $t1, $zero, $zero
and $t1, $s1, $s2
or $s0, $t1, $s3

