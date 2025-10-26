.data
Name: .asciiz "Name: Nadine Haytham\n"
ID: .asciiz "ID: 20812022200132\n"
Course: .asciiz "Course: CSE321-Computer-Organization\n"

.text
main:
    li $v0, 4
    la $a0, Name
    syscall
    la $a0, ID
    syscall
    la $a0, Course
    syscall
    li $v0, 10
    syscall