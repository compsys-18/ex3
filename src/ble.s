      .text
main:
      li    $s1, 2
      li    $s2, 2
      ble   $s1, $s2, then
      li    $v0, 1
      move  $a0, $s2
      syscall
      jr    $ra
then:
      li    $v0, 1
      move  $a0, $s1
      syscall
      jr    $ra
