      .data
A:
      .word 1 2 3 4
B:
      .word 5 6 7 8

      .text
main:
      li    $s0, 0
      li    $s1, 0
      li    $s2, 12

loop:
      slti  $t0, $s0, 4
      beq   $t0, $zero, end

      lw    $t3, A($s1)
      lw    $t4, B($s2)
      li    $v0, 1
      add   $a0, $t3, $t4
      syscall

      addi  $s0, $s0, 1
      addi  $s1, $s1, 4
      addi  $s2, $s2, -4
      j     loop

end:
      jr    $ra
