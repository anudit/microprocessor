.data
str: .asciiz "Hello World"

.text
    li $v0, 4       # $system call code for print_str
    la $a0, str     # $address of string to print
    syscall         # print the string

    li $v0, 10
    syscall
