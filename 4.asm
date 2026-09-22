# A[10] = h + B[5];
#h $s2
#Endereço base do vetor A  $s3
#Endereço base do vetor B  $s4

add $t1, $zero, $zero
add $t2, $zero, $zero

lw $t1, 20($s4)
add $t2, $s2, $t1
sw $t2, 40($s3)