.data
    str: .asciiz "Result : "

.text
    li $v0, 4
    la $a0, str
    syscall

    li $t0, 10
    li $t1, 5
    li $t3, 2
    li $t4, 5
    li $t5, 3

    add $s0, $t1, $t0
    sub $s1, $s0, $t3
    add $s2, $s1, $t4
    mul $s3, $s2, $t5

    li $v0, 1
    la $a0, ($s3)
    syscall

    la $v0, 10
    syscall
