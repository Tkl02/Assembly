.data
funcao: .asciiz "primeiro  lado:  "
valor1: .asciiz "segundo lado: "
valor2: .asciiz "terceiro lado: "
resultado: .asciiz "o triangulo é: "
.text

	# lado 1

	li $v0, 4
	la $a0, lado1
	syscall
	li $v0, 5
	syscall
	move $t2, $v0
	
	# lado 2
	
	li $v0, 4
	la $a0, lado2
	syscall
	li $v0, 5
	syscall
	move $t2, $v0
	
	# lado 3
	
	li $v0, 4
	la $a0, lado3
	syscall
	li $v0, 5
	syscall
	move $t2, $v0
	
beq



	

