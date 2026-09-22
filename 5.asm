# if (i == j) { f = g - h; } 
# f = $s0 
# g = $s1 
# h = $s2 
# i = $s3 
# j = $s4

        bne $s3, $s4, LiuKang
        sub $s0, $s1, $s2
LiuKang: