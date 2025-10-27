.data
    FirstNum: .asciiz "Enter the First Number: \n"
    SecondNum: .asciiz "Enter the second Number: \n"
    ThirdNum: .asciiz "Enter the third Number: \n"
    FourthNum: .asciiz "Enter the fourth Number: \n"
    Average: .asciiz "The average is: "

.text 
    main:
    li $v0, 4
    la $a0, FirstNum
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, SecondNum
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    li $v0, 4
    la $a0, ThirdNum
    syscall

    li $v0, 5
    syscall
    move $t2, $v0

    li $v0, 4
    la $a0, FourthNum
    syscall

    li $v0, 5
    syscall
    move $t3, $v0

    add $t0, $t0, $t1
    add $t0, $t0, $t2
    add $t0, $t0, $t3

    mtc1 $t0, $f0 
    cvt.s.w $f0, $f0
    li.s $f1, 4.0
    div.s $f0, $f0, $f1

    li $v0, 4
    la $a0, Average
    syscall

    li $v0, 2
    mov.s $f12, $f0
    syscall



    exit:
    li $v0, 10
    syscall
