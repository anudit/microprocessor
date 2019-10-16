.data
    array1: .space	8 #  declare 40 bytes of storage to hold array of 10 integers
    br: .asciiz "\n"
    noele: .asciiz "Number of elements are "
    avg: .asciiz "Average of the elements is "

.text

    la $t0, array1 # array base address
    li $t1, 2 # number of elements
    li $t2, 0 # loop start
    li $t3, 2 # loop end
    li $t4, 0 # sum

	start_loop_1:
  		beq $t2, $t3, end_loop_1
  		addi $t2, $t2, 1 # increment counter

        # Get int from user
        li 	$v0, 5
        syscall
        move $s0, $v0

        sw $s0, ($t0)
        addi $t0, $t0, 4

  		b start_loop_1
	end_loop_1:

    la $t0, array1 # array base address
    li $t2, 0 # loop start
    li $t3, 2 # loop end

    start_loop_2:
  		beq $t2, $t3, end_loop_2
  		addi $t2, $t2, 1 # increment counter

        li 	$v0, 1
        lw $a0, ($t0)
        add $t4, $t4, $a0
        syscall

        li $v0, 4
        la $a0, br
        syscall

        addi $t0, $t0, 4

  		b start_loop_2
	end_loop_2:

    li $v0, 4
    la $a0, noele
    syscall

    li $v0, 1
    la $a0, ($t1)
    syscall

    li $v0, 4
    la $a0, br
    syscall

    li $v0, 4
    la $a0, avg
    syscall

    div $t4, $t4, $t2

    li $v0, 1
    la $a0, ($t4)
    syscall

    li $v0, 4
    la $a0, br
    syscall

    la $t0, array1 # array base address
    addi $t0, $t0, 4
    li $t2, 2 # loop start
    start_loop_3:
  		beqz $t2, end_loop_3
  		addi $t2, $t2, -1 # decrement counter

        li 	$v0, 1
        lw $a0, ($t0)
        syscall

        li $v0, 4
        la $a0, br
        syscall

        addi $t0, $t0, -4

  		b start_loop_3
	end_loop_3:
