.data
num: .asciiz "digite um numero"
valor1: .asciiz "o quadrado do numero e: "
valor2: .asciiz "\n o dobro do numero e: "
.text
addi $s1, $zero,2

li $v0,4
la $a0, num
syscall
li $v0, 5
syscall
move $t1, $v0

mul $t2, $t1,$t1
mul $t3, $t1,$s1

li $v0, 4
la $a0, valor1
syscall
li $v0, 1
move $a0, $t2
syscall

li $v0, 4
la $a0, valor2
syscall
li $v0, 1
move $a0, $t3
syscall
