.data
numero_1: .asciiz "digite um valor: "
numero_2: .asciiz "digite um valor: "
numero_3: .asciiz "digite um valor: "
numero_4: .asciiz "digite um valor: "
resultado: .asciiz "a media e: "
.text

addi $s1, $zero,4

# numero 1
li $v0, 4 
la $a0, numero_1
syscall  
li $v0, 5
syscall 
move $t1, $v0

# numero 2
li $v0, 4
la $a0, numero_2
syscall
li $v0, 5
syscall
move $t2, $v0

# numero 3
li $v0, 4
la $a0, numero_3
syscall
li $v0, 5
syscall
move $t3, $v0

#numero 4
li $v0, 4
la $a0, numero_4
syscall
li $v0, 5
syscall
move $t4, $v0

# calculo
add $t5, $t1, $t2
add $t6, $t3, $t4
add $t7, $t5, $t6

div $t8, $t7, $s1

#mostrando resultado 
li $v0, 4
la $a0, resultado
syscall
li $v0, 1
move $a0, $t8
syscall

