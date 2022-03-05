# Project 0: Hello World
.data
    s_out:  .asciiz "Hello @02966650"
    n:      .asciiz "\n"
.text
main:
    li $s0, 5                   # 2966650 % 11 = 5
    li $v0, 4                   # sytem code for printing
    li $t0, 0                   # counter for loop (initialized with zero)

loop:
    la $a0, s_out               # load s_out string into register a0
    syscall                     # print s_out
    beq $t0, $s0, exit          # if loop counter == 5, exit loop
    la $a0, n                   # load s_out string into register a0
    syscall                     # print s_out
    addi $t0, $t0, 1            # loop counter ++
    j loop

exit:
    li $v0, 10
    syscall                     # end program