
#while (i > j) {
# f = f + g;
#}




# f = $s0, g = $s1, i = $s2, j = $s3

loop:   
      slt $t1, $s3, $s2
      beq $t1, $zero, fim
      add $s0, $s0, $s1
      j loop
fim:  