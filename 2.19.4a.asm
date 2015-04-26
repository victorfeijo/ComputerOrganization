#C code

int f(int a, int b) {
    return func(func(a,b), c);
}

f:
    addi    $sp, $sp, -4           # $sp = $sp + -4
    sw      $ra, 0($sp)            #
    jal     func                   # jump to c and save position to $ra
    move    $a0, $v0               # $a0 = $v0
    move    $a1, $a2               # $a1 = $a2
    jal     func                   # jump to func and save position to $ra
    lw      $ra, 0($sp)            #
    addi    $sp, $sp, 4            # $sp = $sp + 4
    jr      $ra                    # jump to $ra

func:
     something
