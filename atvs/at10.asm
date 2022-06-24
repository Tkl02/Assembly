.data
msg_inicio: .asciiz" bem vindo \n o que vc deseja?"
msg_funcao: .asciiz"\n 1(depositar)  2(saque)  3(saldo)  4(ecerrar) "
msg_deposito: .asciiz"\n qual o valor a depositar: "
msg_depositoc: .asciiz"\n deposito concluido com  sucesso"
msg_saque: .asciiz "\n qual o valor a ser sacado: "
msg_saquec: .asciiz"\n saque concluido"
msg_saldo: .asciiz "\n seu saldo e de: "
msg_saida: .asciiz "\n volte sempre"
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
beq $v0,$s1,deposito
beq $v0,$s2,saque  
beq $v0,$s3,saldo
beq $v0,$s4,encerrar

	#deposito
	deposito:
	li $v0, 4
	la $a0, msg_deposito
	syscall
	li $v0, 5
	move $t1, $v0
	syscall
	li $v0, 4
	la $a0, msg_depositoc
	syscall
	j saldo
	syscall
	
	#saque
	saque:
	li $v0, 4
	la $a0, msg_saque
	syscall
	li $v0, 5
	move $t2,$v0
	syscall
	sub $t3, $t1,$t2
	li $v0, 4
	la $a0, msg_saquec
	j saldo
	syscall
	
	#saldo
	saldo:
	li $v0, 4
	la $a0, msg_saldo
	syscall
	li $v0, 1
	move $a0, $t3
	syscall
	j inicio
	
	#encerramento
	encerrar:
	li $v0, 4
	la $a0, msg_saida
	syscall
	li $v0, 10
	syscall
