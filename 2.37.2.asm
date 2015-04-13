Translating X86 to MIPS

mov edx. [esi+4*ebx]

sll     $s2, $s2, 2
add     $s4, $s4, $s2
lw      $s3, 0($s4) 
