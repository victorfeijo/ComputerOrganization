The table below contains various values for register $s1 . You will be asked to evalu-
ate if there would be overflow for a given operation.

1024 ten = 0000 0000 0000 0000 0000 0010 0000 0000

$s0 = 0x7FFFFFFF => 0111 1111 1111 1111 1111 1111 1111 1111

add   $s0, $s0, $s1        # $s0 = $s0 + $s1
$s0 = 1000 0000 0000 0000 0000 0001 1111 1111
$s0 = 0x800001FF

no overflow
