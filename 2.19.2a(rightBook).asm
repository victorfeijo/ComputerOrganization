# 2.19.2 Functions can often be implemented by compilers "in-line".An in-line
# function is when the body of the function is copied into the program space,
# allowing the overhead of the function call to be eliminated. Implement an
# "in-line" version of the C code used on the last exercicie.
# OBS: Implement a "in-line" function have a bad performance when call the
# function a lot of times. "waste of code"

# $a0, $a1 = a, b

sub       $t0, $a0, $a1           # $s0 = $a0 - $a1
slti      $v0, $v0, 0             # $v0 = 1 if $s0 < 0 else = 1
slti      $v0, $v0, 1             # if $v0 = 1 then $v0 = 0 else $v0 = 1
jr        $ra                     # jump to $ra
