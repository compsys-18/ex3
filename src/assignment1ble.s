      .text
main:
      li    $s1, 0
      li    $s2, 5

loop:
      slt   $t0, $s2, $s1
      beq   $t0, $zero, then

      jr    $ra

then:
      li    $v0, 1
      move  $a0, $s1
      syscall

      addi  $s1, $s1, 1

      j     loop
