#while (i != j) { f = g + h; }
# f = $s0, g = $s1, h = $s2, i = $s3, j = $s4

a:
beq $s3, $s4, b
add $s0, $s1, $s2
j a

b: