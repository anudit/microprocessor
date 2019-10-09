.data
	A:	.float 2.5
	B:	.float 10.5
	ad:	.asciiz"Addition: "
	mull:	.asciiz"\nMultiplication: "
	divv:	.asciiz"\nDivision: "
.text

lwc1	$f1,	A
lwc1	$f2,	B

li	$v0,	4
la,	$a0,	ad
syscall
add.s	$f0,	$f1,	$f2
mov.s	$f12,	$f0
li	$v0,	2
syscall

li	$v0,	4
la,	$a0,	mull
syscall
mul.s	$f0,	$f1,	$f2
mov.s	$f12,	$f0
li	$v0,	2
syscall

li	$v0,	4
la,	$a0,	divv
syscall
div.s	$f0,	$f1,	$f2
mov.s	$f12,	$f0
li	$v0,	2
syscall

li $v0,	10
syscall
