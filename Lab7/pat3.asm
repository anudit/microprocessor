.data
    br: .asciiz "\n"
    sp: .asciiz ","

.text

li $t0, 0
li $t1, 4
li $t4, 1

start_loop_1:
  beq $t0, $t1, end_loop_1

  li $t2, 0
	la $t3, 4

	start_loop_2:
    beq $t2, $t3, end_loop_2
    addi $t2, $t2, 1

    li $v0, 1
    la $a0, ($t2)
    syscall

    li $v0, 4
    la $a0, sp
    syscall

    li $v0, 1
    la $a0, ($t4)
    syscall

    li $v0, 4
    la $a0, br
    syscall

    b start_loop_2
	end_loop_2:

  addi $t0, $t0, 1
  addi $t4, $t4, 1
  b start_loop_1

end_loop_1:
