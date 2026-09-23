#A[12] = h + A[8];
# h -> $s2
# A -> $s3
add $t1, $zero, $zero
add $t2, $zero, $zero
lw $t1, 32($s3) #t1 = A[8]
add $t2, $t1, $s2 
sw $t2, 48($s3)

