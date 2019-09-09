.data
    prompt: .asciiz "enter number: "
.text
li 	$v0 	4
la 	$a0, 	prompt          # prompt for user input
syscall
#receive input
li	 $v0,	 5
syscall
move	$s1, 	$v0    # $s1 = user input
li	$t1,	1
li	$t2,	1
loop:
bgt 	$t1, 	$s1 	quit

mul	$t2,	$t2,	$t1
addi	$t1,	$t1,	1
b	 loop
quit:
li	 $v0 	1
la 	$a0,	 ($t2)
syscall
li 	$v0, 	10
syscall
