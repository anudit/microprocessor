.data
 .data
string: .asciiz "tanmay hello"
cntmsg: .asciiz "The length of the string: "

    .text
main:
  la $a0, string
  li $t3, 3
  
	jal strlen
        jal print
        addi $a1, $a0, 0
        addi $v1, $v0, 0
        
        addi $v0, $0, 11
        la $a0, cntmsg
        
        syscall
        addi $v0, $0, 10
        syscall


strlen:
li $t0, 0
loop:
lb $t1, 0($a0)
beqz $t1, exit
addi $a0, $a0, 1
addi $t0, $t0, 1
j loop
exit:
jr $ra

print:
  li $v0, 4
  la $a0, cntmsg
  syscall

  li $v0, 1
  sub  $t0,  $t0, $t3
  move $a0, $t0
  syscall

jr $ra