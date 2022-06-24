.data
msg_inicio: .asciiz" bem vindo \n o que vc deseja?"
msg_funcao: .asciiz"\n 1(inserir)  2(remover)  3(ver quantidade)  4(encerrar) "
msg_deposito: .asciiz"\n qual o valor a inserir? "
msg_depositoc: .asciiz"\n inserção concluida com  sucesso"
msg_saque: .asciiz "\n qual o valor a ser retirado: "
msg_saquec: .asciiz"\n retiro concluido"
msg_saldo: .asciiz "\n  produtos em estoque: "
msg_saida: .asciiz "\n volte sempre"
cc: .asciiz "\n realizar compras, pois seu estoque esta com poucos produtos"
.text
# menssagem de inicio
	
li $v0, 4
la $a0, msg_inicio
syscall
	inicio:
li $v0, 4
la $a0, msg_funcao
syscall
#atribuiçao de funcao
addi $s1, $zero,1
addi $s2, $zero,2
addi $s3, $zero,3
addi $s4, $zero,4
li $v0,5
syscall

#redirecionmento de funcao
beq $v0,$s1,inserir
beq $v0,$s2,remover  
beq $v0,$s3,verquant
beq $v0,$s4,encerrar
 move $t3, $zero
	#deposito
	inserir:
	li $v0, 4
	la $a0, msg_deposito
	syscall
	li $v0, 5
	syscall
	move $t1, $v0
	

	add $t3, $t3, $t1

	
	li $v0, 4
	la $a0, msg_depositoc
	syscall

	
	li $v0, 4
	la $a0, msg_saldo
	syscall
	li $v0, 1
	move $a0, $t3
	syscall
	j inicio
	syscall
	#funçaõ ver saldo

	#saque
	remover:
	
	li $v0, 4
	la $a0, msg_saque
	syscall
	li $v0, 5
	syscall
	move $t2,$v0
	
	sub $t3, $t3,$t2
	beq $t3, $zero, compra
	
	li $v0, 4
	la $a0, msg_saquec
        
	syscall
	li $v0, 4
	la $a0, msg_saldo
	syscall
	li $v0, 1
	move $a0, $t3
	
	syscall
	compra:
	li $v0, 4
	la $a0, cc
	syscall
	j inicio
	syscall

	verquant:
	
	li $v0, 4
	la $a0, msg_saldo
	syscall
	li $v0, 1
	move $a0, $t3
	syscall
	beq $t3, $zero, cx
	cx:
	li $v0, 4
	la $a0, cc
	syscall
	
	j inicio
	syscall
	#encerramento
	encerrar:
	li $v0, 4
	la $a0, msg_saida
	syscall
	li $v0, 4
	la $a0, msg_saldo
	syscall
	li $v0, 1
	move $a0, $t3
	syscall
	li $v0, 10
	syscall