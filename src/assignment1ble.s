      .text
main:
      li    $s1, 1
      li    $s2, 2

      slt   $t0, $s2, $s1
      beq   $t0, $zero, then

      li    $v0, 1
      move  $a0, $s2
      syscall
      jr    $ra
then:
      li    $v0, 1
      move  $a0, $s1
      syscall
      jr    $ra
