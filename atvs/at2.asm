.data
funcao: .asciiz "digite 1(somar) 2(subtrair) 3(multp) 4(dividir): "
valor1: .asciiz "digite um valor: "
valor2: .asciiz "digite um valor: "
resultado: .asciiz "o resultado e: "
.text
# seleçao de calculo(primeira menssagem)
li $v0, 4
la $a0, funcao
syscall

#Atribuindo valores aos registradores  
addi $s1, $zero,1
addi $s2, $zero,2
addi $s3, $zero,3
addi $s4, $zero,4

#Lendo um inteiro do teclado
    li $v0,5
    syscall

	# redirecionamento "if-else"

	beq $v0,$s1,soma
        beq $v0,$s2,subtrair  
	beq $v0,$s3,multiplicar
	beq $v0,$s4,dividir

	# soma


	soma:

	li $v0, 4
	la $a0, valor1
	syscall
	li $v0, 5
	syscall
	move $t2, $v0

	li $v0, 4
	la $a0, valor2
	syscall
	li $v0, 5
	syscall
	move $t3, $v0
	
	add $t4, $t2,$t3
	
	li $v0, 4
	la $a0, resultado
	syscall
	li $v0, 1
	move $a0, $t4
	syscall
	
	li $v0, 10
	syscall
	
	# subtração
	
	subtrair:
	
	li $v0, 4
	la $a0, valor1
	syscall
	li $v0, 5
	syscall
	move $t2, $v0

	li $v0, 4
	la $a0, valor2
	syscall
	li $v0, 5
	syscall
	move $t3, $v0
	
	sub $t4, $t2,$t3
	
	li $v0, 4
	la $a0, resultado
	syscall
	li $v0, 1
	move $a0, $t4
	syscall
	
	li $v0, 10
	syscall
	
	# multiplicação
	
	multiplicar:
	
	li $v0, 4
	la $a0, valor1
	syscall
	li $v0, 5
	syscall
	move $t2, $v0

	li $v0, 4
	la $a0, valor2
	syscall
	li $v0, 5
	syscall
	move $t3, $v0
	
	mul $t4, $t2,$t3
	
	li $v0, 4
	la $a0, resultado
	syscall
	li $v0, 1
	move $a0, $t4
	syscall
	
	li $v0, 10
	syscall
	
	# divisão
	
	dividir:
	
	li $v0, 4
	la $a0, valor1
	syscall
	li $v0, 5
	syscall
	move $t2, $v0

	li $v0, 4
	la $a0, valor2
	syscall
	li $v0, 5
	syscall
	move $t3, $v0
	
	div $t4, $t2,$t3
	
	li $v0, 4
	la $a0, resultado
	syscall
	li $v0, 1
	move $a0, $t4
	syscall
