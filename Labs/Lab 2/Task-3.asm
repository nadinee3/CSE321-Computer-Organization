.data 
    prompt: .asciiz "Enter a number from 1-3: \n"
    one: .asciiz "You chose number 1. \n"
    two: .asciiz "You chose number 2. \n"
    three: .asciiz "You chose number 3. \n"
    default: .asciiz "You chose a number out of range. \n"

.text 
    main:
        li $v0, 4
        la $a0, prompt
        syscall

        li $v0, 5
        syscall

        #switch case
        beq $v0, 1, MsgOne
        beq $v0, 2, MsgTwo
        beq $v0, 3, MsgThree
        j DefaultMsg

        MsgOne:
            li $v0, 4
            la $a0, one
            syscall
            j exit
        MsgTwo:
            li $v0, 4
            la $a0, two
            syscall
            j exit
        MsgThree:
            li $v0, 4
            la $a0, three
            syscall
            j exit
        DefaultMsg:
            li $v0, 4
            la $a0, default
            syscall

    exit:
        li $v0, 10
        syscall


