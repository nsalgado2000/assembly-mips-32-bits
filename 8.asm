
if (i == 0) {
    f = g + h;
} else {
    f = g - h;
}

# f = $s0, g = $s1, h = $s2, i = $s3

bne $s3, $zero, else
add $s0, $s1, $s2
j xpto
else:
sub $s0, $s1, $s2

xpto: