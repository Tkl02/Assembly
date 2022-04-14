.data
nota1: .asciiz "nota primeiro bimestre: "
nota2: .asciiz "nota segundo bimestre: "
nota3: .asciiz "nota terceiro bimestre: "
nota4: .asciiz "nota quarto bimestre: "
media: .asciiz "sua media é: "
aprovado_msg: .asciiz " voce foi aprovado:)"
recuperacao_msg: .asciiz " voce esta de recuperação:|"
reprovado_msg: .asciiz " voce foi reprovado :("
.text
#comparador
addi $s1, $zero,60
addi $s2, $zero,30
addi $s3, $zero,4

#numero 
li $v0, 4 
la $a0, nota1
syscall  
li $v0, 5 
syscall 
move $t1, $v0 

li $v0, 4 
la $a0, nota2
syscall  
li $v0, 5 
syscall 
move $t2, $v0 

li $v0, 4 
la $a0, nota3
syscall  
li $v0, 5 
syscall 
move $t3, $v0 

li $v0, 4 
la $a0, nota4
syscall  
li $v0, 5 
syscall 
move $t4, $v0

add $t5, $t2,$t1
add $t6, $t3,$t4
add $t7, $t6,$t5

div $t8, $t7,$s3

li $v0, 4
la $a0, media
syscall
li $v0, 1
move $a0, $t8
syscall
#comparação

blt $t8, $s2, menor
bge $t8, $s2, compar_maior

menor:
li $v0, 4 
la $a0, reprovado_msg
syscall
li, $v0, 10
syscall 

compar_maior:
blt $t8, $s1, recuperacao
bge $t8, $s1, aprovado

recuperacao:
li $v0, 4 
la $a0, recuperacao_msg
syscall
li, $v0, 10
syscall

aprovado:
li $v0, 4 
la $a0, aprovado_msg
syscall 
li $v0,10
syscall

