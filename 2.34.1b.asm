Translating ARM to MIPS

ROR     r1, r2, #4    :r1 = r2 3:0 concatened with r2 31:4

sll     $t0, $s2, 28
srl     $t1, $s2, 4
or      $s1, $t0, $t1
