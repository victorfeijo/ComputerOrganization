Assume that the register $t1 contains the address 0x10000000 and the register
$t2 contains the address 0x10000010. Note the MIPS architecture utilizes big-
endian addressing.

lbu $t0, 0($t1)
sw $t0, 0($t2)

What value is stored at the address pointed to by register $t2 ? Assume that the
memory location pointed to $t2 is initialized to 0xFFFFFFFF.


value $t1 = 1000 0000 |  12  |  34  |  56  |  78
                         |      |      |       |
                       Byte 0 Byte 1 Byte 2  Byte 3  #BIG ENDIAN MODEL
$t2 = 12 (0001 0010)
$t2 = x00000012
