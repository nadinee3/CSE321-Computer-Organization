.data 
    prompt: .asciiz "Enter n: \n"
    enterNum: .asciiz "Enter an integer: \n"
    average: .asciiz "The average is: "
    newLine: .asciiz "\n"

.text
main:
    li $v0, 4
    la $a0, prompt
    syscall

    li $v0, 5
    syscall

    move $t2, $v0 #where we stored n

    li $t0, 0 #sum
    li $t1, 0 #counter

    for:
        beq $t2, $t1, end

        li $v0, 4
        la $a0, enterNum
        syscall

        li $v0, 5
        syscall

        add $t0, $t0, $v0 #sum+= Number
        addi $t1, 1 #counter++

        j for

    end:
        mtc1 $t0, $f0
        mtc1 $t2, $f1
        cvt.s.w $f0, $f0
        cvt.s.w $f1, $f1
        div.s $f0, $f0, $f1

    li $v0, 4
    la $a0, average
    syscall

    li $v0, 2
    mov.s $f12, $f0
    syscall

    li $v0, 4
    la $a0, newLine
    syscall
        

exit:
    li $v0, 10
    syscall