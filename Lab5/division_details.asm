.data
	entnum1 : .asciiz "\nEnter Number 1: "
    entnum2 : .asciiz "\nEnter Number 2: "
    remainder : .asciiz "\nRemainder : "
    divisor : .asciiz "\nDivisor: "

.text
    la $a0, entnum1
    li $v0, 4
    syscall

    li $v0, 5
    syscall

    move $t0, $v0

    la $a0, entnum2
    li $v0, 4
    syscall

    li $v0, 5
    syscall

    move $t1, $v0

    div $t0 $t1
    mfhi $t0
    mflo $t1

    la $a0, remainder
    li $v0, 4
    syscall

    li 	$v0,  1
    la 	$a0, ($t0)
    syscall

    la $a0, divisor
    li $v0, 4
    syscall

    li 	$v0,  1
    la 	$a0, ($t1)
    syscall

    li 	$v0, 10
    syscall
