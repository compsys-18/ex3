      .text
main:
      li    $s1, 5
      li    $s2, 10
      blt   $s1, $s2, then
      li    $v0, 1
      move  $a0, $s2
      syscall
      jr    $ra
then:
      li    $v0, 1
      move  $a0, $s1
      syscall
      jr    $ra
