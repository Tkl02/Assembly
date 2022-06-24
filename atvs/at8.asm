.data
ano: .asciiz "\n qual sua idade: "
resultado: .asciiz "\n sua idade e: "
true: .asciiz "\n voce e maior de idade"
false: .asciiz "\n voce e menor de idade"
.text

li $v0, 4
la $a0, ano
syscall
li $v0, 5
syscall
move $t1, $v0

	bge $t1, 18, votat
	blt $t1, 18, votaf
	
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