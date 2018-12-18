      .text
main:
      li    $s1, 0
      li    $s2, 5

loop:
      blt   $s1, $s2, then

      jr    $ra

then:
      li    $v0, 1
      move  $a0, $s1
      syscall

      addi  $s1, $s1, 1

      j     loop
