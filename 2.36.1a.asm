Translating ARM to MIPS

ADD r3, r2, r1, LSL #3     :r3 = r2 + (r1 << 3)

sll     $t0, $s1, 3
add     $s3, $s2, $t0
