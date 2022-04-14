.data
numero_1: .asciiz "digite um numero: "
maior_msg: .asciiz "seu numero e maior q 10"
menor_msg: .asciiz "seu numero e menor q 10"
igual_msg: .asciiz "seu numero e igual a 10"
.text
#comparador
addi $s1, $zero,10
#numero 
li $v0, 4 
la $a0, numero_1
syscall  
li $v0, 5 
syscall 
move $t1, $v0 

beq $t1,$s1, igual
blt $t1,$s1, menor
bge $t1,$s1, maior

igual:

li $v0, 4
la $a0, igual_msg
syscall 
li $v0, 5 
syscall 
move $t1, $s1

menor:

li $v0, 4
la $a0, menor_msg
syscall 
li $v0, 5 
syscall 
move $t1, $s1

maior:

li $v0, 4
la $a0, maior_msg
syscall 
li $v0, 5 
syscall 
move $t1, $s1
li, $v0, 10
syscall
