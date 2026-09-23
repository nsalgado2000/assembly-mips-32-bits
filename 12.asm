
while (i == 0) {
    f = f + 1;
}



# f = $s0, i = $s1

loop: 
      bne $s1, $zero, else
      addi $s0, $s0, 1
      j loop


else:
