while (i < 10) {
    f = f + g;
}

# f = $s0, g = $s1, i = $s2
loop: 
      slti $t1, $s2, 10
      beq $t1, $zero, fim 
      add $s0, $s0, $s1
      j loop

fim: 
