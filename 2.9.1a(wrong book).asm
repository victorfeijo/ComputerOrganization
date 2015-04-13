The table below contains various values for register $s1 . You will be asked to evalu-
ate if there would be overflow for a given operation.

–1 (ten) = 1111 1111 1111 1111 1111 1111 1111 1111 (binary 2 complement)

$s0 = 0x70000000 => 0111 0000 0000 0000 0000 0000 0000 0000

add   $s0, $s0, $s1        # $s0 = $s0 + $s1
$s0 = 0110 1111 1111 1111 1111 1111 1111 1111 1111 1111
$s0 = 0x6FFFFFFF

no overflow
