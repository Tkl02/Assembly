# parte detinada a entrada de dados 
#ou seja apresentação da intruções ao usuario

.data
valor1: .asciiz "digite um valor: "
valor2: .asciiz "digite um valor: "
valor3: .asciiz "digite um valor: "
valor4: .asciiz "digite um valor: "
resultado: .asciiz "o resultado da soma e: "
.text
# leitura de valores
li $v0, 4 #preparando o processador pra printar uma string
la $a0, valor1 #registrador a0 recebe o primeiro valor 
syscall #executa a intrução 
li $v0, 5 #prepara o processador para receber a instruçao 
syscall #executa a intrução 
move $t1, $v0 #move o valor de v0 para o t1

 #segundo numero
li $v0, 4
la $a0, valor2
syscall
li $v0, 5
syscall
move $t2, $v0

#terceiro numero
li $v0, 4
la $a0, valor3
syscall
li $v0, 5
syscall
move $t3, $v0

#quarto numero
li $v0, 4
la $a0, valor4
syscall
li $v0, 5
syscall
move $t4, $v0

#soma dos numeros

add $t5, $t1, $t2
add $t6, $t3, $t4
add $t7, $t5, $t6
 
 #mostrar saida de dados
 
li $v0, 4
la $a0, resultado
syscall
li $v0, 1
move $a0, $t7
syscall
