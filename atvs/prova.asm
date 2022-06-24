.data
ano: .asciiz "\n qual ano vc nasceu? "
resultado: .asciiz "\n sua idade e: "
true: .asciiz "\n voce vota este ano"
false: .asciiz "\n voce nao vota este ano"
.text

addi $s2, $zero,2022

li $v0, 4
la $a0, ano
syscall
li $v0, 5
syscall
move $t1, $v0

sub $t3,$s2,$t1

li $v0, 4
la $a0, resultado
syscall
li $v0, 1
move $a0, $t3
syscall

	bge $t3, 16, votat
	blt $t3, 16, votaf
	
	votaf:
	li $v0, 4
	la $a0, false
	syscall
	li $v0,10
	syscall

	votat:
	li $v0, 4
	la $a0, true
	syscall
	li $v0,10
	syscall