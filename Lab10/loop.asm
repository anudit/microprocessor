.data
    br: .asciiz "\n"
.text

li $t0, 0
li $t1, 3

start_loop_1:
    beq $t0, $t1, end_loop_1
    addi $t0, $t0, 1

    li $v0, 1
    la $a0, ($t0)
    syscall

    li $v0, 4
    la $a0, br
    syscall

    b start_loop_1
end_loop_1:
    li $v0, 10
    syscall
