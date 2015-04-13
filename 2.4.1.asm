f,g,h,i,j = $s0,$s1,$s2,$s3,$s4
A, B = $s6, $s7

f = -g - A[4];
B[8] = A[i - j];

For the C statements above, what is the corresponding MIPS
assembly code?

sub $t0, $zero, $s1  # $t0 = - g
lw  $t1, 16($s6)     # $t1 = A[4]
sub $s0, $t0, $t1    # f = -g - A[4]

sub $t2, $s3, $s4    # $t2 = i - j
add $t3, $s6, $t2    # $t3 = A[0 + $t2]
lw  $t4, 0($s6)      # $t4 = A[i -j]
sw  $t4, 32($s7)     # B[8] = A[i -j] 
