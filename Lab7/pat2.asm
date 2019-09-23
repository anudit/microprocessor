.data
    br: .asciiz "\n"
    sym: .asciiz "* "
    sp: .asciiz " "
    
.text

li $t0, 0
li $t1, 5
li $t4, 0
	
start_loop_1:
  beq $t0, $t1, end_loop_1

	la $t5, ($t4)
	li $t6, 5

	start_loop_3:
  		beq $t5, $t6, end_loop_3
  		addi $t5, $t5, 1

  		li $v0, 4
		la $a0, sp
		syscall

  		b start_loop_3
	end_loop_3:


  	li $t2, 0
	la $t3, ($t0)

	start_loop_2:
  		beq $t2, $t3, end_loop_2
  		addi $t2, $t2, 1

  		li $v0, 4
		la $a0, sym
		syscall

  		b start_loop_2
	end_loop_2:

	li $v0, 4
	la $a0, br
	syscall

  addi $t0, $t0, 1
  addi $t4, $t4, 1
  b start_loop_1

end_loop_1:
