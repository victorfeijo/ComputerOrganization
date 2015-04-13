#C code

int compare(int a, int b){
    if(sub(a, b) >= 0)
        return 1;
    else
        return 0;
}

int sub (int a, int b){
    return a-b;
}

compare:

    addi    $sp, $sp, -4            # $sp = $sp + -12
    sw      $ra, 0($sp)             # save $ra
    jal     sub                     # jump and link to label sub
    lw      $ra, 0($sp)             # recovery the $ra adress
    addi    $sp, $sp, 4             # $sp = $sp + 4
    slti    $v0, $v0, 0             # test for $v0 < 0
    slti    $v0, $v0, 1	     	    # < == not(>=)
    jr      $ra                     # jump to $ra

sub:
    sub     $v0, $a0, $a1           # $v0 = $a0 - $a1
    jr      $ra                     # jump to $ra
