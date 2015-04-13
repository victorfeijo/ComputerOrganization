f = g - f;
f = i + (h - 2);

For the C statements above, what is the corresponding MIPS
assembly code? Use a minimal number of MIPS assembly instructions.

sub f, g, f

sub $t0, h, 2
add f, i, $t0
