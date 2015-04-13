f = -g - f;
f = g + (-f - 5);

For the C statements above, what is the corresponding MIPS
assembly code? Use a minimal number of MIPS assembly instructions.

sub $t0, $zero, g
sub f, $t0, f

sub $t1, $zero, f
addi $t2, $t1, -5
add f, g, $t2
