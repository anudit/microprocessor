.data
    tea:	.float 0.2
    burger:	.float 0.5
    pp:		.float 0.6
    tt:		.asciiz"Total Profit: "
.text

li	$v0,	4
la	$a0,	tt
syscall
li	$s0,	10	#cost of tea
li	$s1,	300	#sale
mul	$t0,	$s1,	$s0
lwc1	$f0,	tea
move $a1, $t0
mtc1 $a1, $f12
cvt.s.w $f12, $f12
mul.s	$f1,	$f12,	$f0
mov.s $f2, $f1

li	$s0,	50	#cost of burger
li	$s1,	50	#sale
mul	$t0,	$s1,	$s0
lwc1	$f0,	burger
move $a1, $t0
mtc1 $a1, $f12
cvt.s.w $f12, $f12
mul.s	$f1,	$f12,	$f0
mov.s $f3, $f1

li	$s0,	30	#cost of Panipuri
li	$s1,	20	#sale
mul	$t0,	$s1,	$s0
lwc1	$f0,	pp
move $a1, $t0
mtc1 $a1, $f12
cvt.s.w $f12, $f12
mul.s	$f1,	$f12,	$f0
mov.s $f4, $f1

add.s	$f5,	$f2,	$f3
add.s	$f5,	$f5,	$f4
mov.s	$f12,	$f5
li	$v0,	2
syscall

li $v0,	10
syscall
