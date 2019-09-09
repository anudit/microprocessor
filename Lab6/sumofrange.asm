.data
	start: .asciiz "Enter Starting Point : "
	end: .asciiz "Enter Ending Point : "

.text

	# prompt for starting value
	li 	$v0 	4
	la 	$a0, 	start          
	syscall

	#receive input
	li	 $v0,	 5
	syscall

	add 	$s1, 	$v0, 	$zero     # $s1 = user input

	# prompt for ending value
	li 	$v0 	4
	la 	$a0, 	end          
	syscall

	#receive input
	li 	$v0,	 5
	syscall
	
	add 	$s2, 	$v0, 	$zero

	loop:
	bgt 	$s1, 	$s2 	quit
	add 	$s0	 $s0 	$s1
	addi 	$s1, 	$s1,	 1
	b	 loop
	
	quit:
	li	 $v0 	1
	la 	$a0,	 ($s0)
	syscall
	li 	$v0, 	10
	syscall
