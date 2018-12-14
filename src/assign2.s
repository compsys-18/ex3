      .data
A:
      .word 1 2 3 4
B:
      .word 5 6 7 8 9
BREAK:
      .asciiz "size of A and B isn't equal.\n"

      .text
      .globl start
start:

check:
      bne   $s0, $s1, brk

      move  $t0, $s1
      li    $s1, 0
      li    $s3, 0
      li    $t1, 4
      mul   $s2, $t0, $t1

loop:
      slt   $t0, $s3, $s0
      beq   $t0, $zero, end

      addi  $s2, $s2, -4

      lw    $t1, A($s1)
      lw    $t2, B($s2)
      li    $v0, 1
      add   $a0, $t1, $t2
      syscall

      addi  $s3, $s3, 1
      addi  $s1, $s1, 4
      j     loop

brk:
      li    $v0, 4
      la    $a0, BREAK
      syscall

end:
      jr    $ra

      .globl main
main:
      addi  $sp, $sp, -4
      sw    $ra, 0($sp)

      li    $s0, 4 #配列Aの長さ
      li    $s1, 5 #配列Bの長さ

      jal   start

      lw    $ra, 0($sp)
      addi   $sp, $sp, 4

      jr    $ra
