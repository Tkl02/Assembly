.data
funcao: .asciiz " \n digite uma lista de numeros: "
result:   .asciiz "\na quantidade de numeros foi: "
result_soma: .asciiz "\na soma foi: "
media_fn: .asciiz "\n a media dos numeros  foi: "

.text
li $v0, 4
la $a0, funcao
syscall


# inicio do laço
move $t0, $zero
while:
li $v0, 5
syscall
move $t1,$v0
 beq $t1, 0, media# condição para finalizar o laço
addi $t0, $t0,1
move $t1,$v0
move $t2, $t1
add $t3, $t2,$t3



 j while


 
 media:
 
 div $t5, $t3, $t0
 li $v0, 4
 la $a0, result
 syscall
 li $v0, 1
 move $a0, $t0
 syscall 
 li $v0, 4
 la $a0, result_soma
 syscall
 li $v0, 1
 move $a0, $t3
	syscall
	 li $v0, 4
 la $a0, media_fn
 syscall
 li $v0, 1
 move $a0, $t5
 syscall