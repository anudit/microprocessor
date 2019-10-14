.text
li	$t0,	203
li	$t1,	10
div 	$t0, $t0, $t1
mfhi	$t3

li $v0, 1
la $a0, ($t3)
syscall


loop: 
beqz $t0, exit


div $t0, $t0, $t1
mfhi $t3

li $v0, 1
la $a0, ($t3)
syscall


b loop

exit:
li $v0, 10
syscall