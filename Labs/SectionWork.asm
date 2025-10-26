.data 
hello: .asciiz "Hello, World!\n"
.text
main:
    li $v0, 4        
    la $a0, hello      
    syscall          

    # Exit program
    li $v0, 10         
    syscall            