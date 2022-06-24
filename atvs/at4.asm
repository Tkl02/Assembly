.data
valor: .asciiz "digiteo valor de seu salario: "
gasto: .asciiz "digite valor de seus gastos: "
receita: .asciiz "seu saldo e: "
.text
#numero 1
li $v0, 4 
la $a0, valor
syscall  
li $v0, 5 
syscall 
move $t1, $v0 
#numero 2
li $v0, 4 
la $a0, gasto
syscall  
li $v0, 5 
syscall 
move $t2, $v0 

sub $t3,$t1,$t2

li $v0, 4
la $a0, receita
syscall
li $v0, 1
move $a0, $t3
syscall
