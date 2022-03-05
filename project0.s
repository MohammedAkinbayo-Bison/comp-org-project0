# Project 0: Hello World
    .data
    s_out:  .asciiz "Hello @02966650"
    .text
main:
    li $s0, 5                   # 2966650 % 11 = 5
    li $v0, 4                   # sytem code for printing
    la $a0, s_out               # load s_out string into register a0
    li $t0, $zero               # counter for loop (initialized with zero)

loop:
    beq $t0, $s0, exit          # if loop counter == 5, exit loop
    syscall                     # print s_out
    addi $t0, $t0, 1            # loop counter ++
    j loop
