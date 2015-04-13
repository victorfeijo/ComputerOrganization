# C Code

int fib(int n){
    if (n==0)
        return 0;
    else if (n == 1)
        return 1;
    else
        fib(n-1) + fib(n–2);

fib:

    addi      $sp, $sp, -8          # $sp = $sp + -8
    sw        $ra, 4($sp)           # [$sp + 4] = $ra
    sw        $a0, 0($sp)           # [$sp] = $a0
    move      $v0, $a0              # $v0 = $a0

    blt       $a0, 2, fib_rtn       # if $a0 < 2 then fib_rtn
    addi      $a0, $a0, -1          # $a0 = $a0 + -1
    jal       fib                   # jump to fib and save position to $ra

    lw        $a0, 0($sp)           # load n
    sw        $v0, 0($sp)           # save fib(n - 1)
    addi      $a0, $a0, -2          # $a0 = $a0 + -2
    jal       fib                   # jump to fib and save position to $ra

    lw        $v1, 0($sp)           # lod $v1 fib(n - 1)
    add       $v0, $v0, $v1         # $v0 = $v0 + $v1 ($v0 = fin(n - 2))



fib_rtn:
    lw        $ra, 4($sp)           # restore $ra
    addi      $sp, $sp, 8           # $sp = $sp + 8
    jr        $ra                   # jump to $ra
