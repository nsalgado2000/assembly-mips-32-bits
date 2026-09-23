
#if (i == j) {
#   f = g + 1;
#} else {
#    f = 0;
#}

# f = $s0, g = $s1, h = $s2, i = $s3, j = $s4

bne $s3, $s4, a
addi $s0, $s1, 1

j b


b:
 add $s0, $zero, $zero

b: