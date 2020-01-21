.data
    ques: .asciiz "Enter A Number : "
    st: .asciiz " x "
    eq: .asciiz " = "
    br: .asciiz "\n"
    
.text

li $t0, 0
li $t1, 10
#li $t2, 13

li $v0 4
la $a0, ques          
syscall

li $v0,	 5
syscall
move $t2, $v0

start_loop_1:
    beq $t0, $t1, end_loop_1
    addi $t0, $t0, 1

    li $v0, 1
    la $a0, ($t2)
    syscall

    li $v0, 4
    la $a0, st
    syscall
    
    li $v0, 1
    la $a0, ($t0)
    syscall
    
    li $v0, 4
    la $a0, eq
    syscall

    mul	$t3, $t0, $t2

    li $v0, 1
    la $a0, ($t3)
    syscall

    li $v0, 4
    la $a0, br
    syscall

    b start_loop_1
end_loop_1:
    li $v0, 10
    syscall
