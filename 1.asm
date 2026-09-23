#f = (g + h) - (i + j);
  add $t1, $zero, $zero #garante que t1 ta zerado  
  add $t2, $zero, $zero # garante que t2 ta zerado
  add $t1, $s1, $s2  #$t1 = g + h
  add $t2, $s3, $s4  #$t2 = i + j
  sub $s0, $t1, $t2 # f = (g + h) - (i + j);
