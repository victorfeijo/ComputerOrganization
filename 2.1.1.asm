f = g - h;
f = g + ( h - 5 );

For the C statements above, what is the corresponding MIPS
assembly code? Use a minimal number of MIPS assembly instructions.

sub f, g, h

addi $t1, h, -5
add f, g, $t1





ou??
addi $t0, $zero, 5
sub $t1, h, $t0
add f, g, $t0
