.data
str: .asciiz "Sum : "

.text
    li $v0, 4
    la $a0, str
    syscall

    li $t0, 15
    li $t1, 12
    add $t2, $t1, $t0

    li $v0, 1
    la $a0, ($t2)
    syscall

    la $v0, 10
    syscall
