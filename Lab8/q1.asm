.data
    br: .asciiz "Input here: "
    a:	.asciiz "A"
    b:  .asciiz "B"
    c:  .asciiz "C"
    d:  .asciiz "D"
    e:  .asciiz "E"
    f:  .asciiz "F"
.text

li	$t0,	90
li	$t1,	80
li	$t2,	70
li	$t3,	60
li	$t4,	40

li	$v0,	4
la	$a0,	br
syscall

li	$v0,	5
syscall
move	$s0,	$v0

bge	$s0,	$t0,	c1
bge	$s0,	$t1,	c2
bge	$s0,	$t2,	c3
bge	$s0,	$t3,	c4
bge	$s0,	$t4,	c5

li	$v0,	4
la	$a0,	f
syscall
b endc
c1:
	li	$v0,	4
	la	$a0,	a
	syscall
	b endc
c2:
	li	$v0,	4
	la	$a0,	b
	syscall
	b endc
c3:
	li	$v0,	4
	la	$a0,	c
	syscall
	b endc
c4:
	li	$v0,	4
	la	$a0,	d
	syscall
	b endc
c5:
	li	$v0,	4
	la	$a0,	e
	syscall
	b endc
endc:
li $v0,	10
syscall
