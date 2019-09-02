.data
	entnum : .asciiz "\nEnter Number : "
	even: .asciiz "\nEven"
	odd: .asciiz "\nOdd"
    
.text
    la $a0, entnum
    li $v0, 4
    syscall
    
    li $v0, 5
    syscall
    
    move $t0, $v0
    
    li $t1 2
    div $t0 $t1
    mfhi $t0

    li 	$v0,  1
    la 	$a0, ($t0)
    syscall

    li 	$v0, 4
    
    bne $t0 $zero printodd
    la 	$a0, even
    b endif
    printodd:
        la  $a0 odd
    endif:
    	syscall
    	
    li 	$v0, 10
    syscall
