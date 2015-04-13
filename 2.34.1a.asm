Translating ARM to MIPS:

LOOP :   MOV r0, #10   :init loop counter to 10
         ADD r0, r1    :add r1 to r0
         SUBS r0, 1    :decrement counter
         BNE LOOP      :if Z=0 repeat loop


addi     $s0, $zero, 10
jal      loop

loop :

add     $s0, $s0, $s1
addi    $s0, $s0, -1
bne     $s0, $zero, loop
