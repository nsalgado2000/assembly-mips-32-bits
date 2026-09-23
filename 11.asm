#while (a == b) {
#   c = d - e;
#}

# a = $s0, b = $s1, c = $s2, d = $s3, e = $s4

while:
      bne $s0, $s1, else
      sub $s2, $s3, $s4

      j while
else:
