.data
    br: .asciiz "\n"
.text

li $t0, 0
li $t1, 5

start_loop_1:
  beq $t0, $t1, end_loop_1

  	li $t2, 0
	la $t3, ($t0)

	start_loop_2:
  		beq $t2, $t3, end_loop_2
  		addi $t2, $t2, 1

  		li $v0, 1
    		la $a0, ($t2)
    		syscall

  		b start_loop_2
	end_loop_2:

	li $v0, 4
    la $a0, br
    syscall

  addi $t0, $t0, 1
  b start_loop_1

end_loop_1:
