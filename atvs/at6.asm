.data
nota1: .asciiz "nota primeiro bimestre: "
nota2: .asciiz "nota segundo bimestre: "
msg1: .asciiz "\n a primeira nota e maior"
msg2:.asciiz "\n a segunda nota e maior"
media: .asciiz "sua media é: "
med: .float 2.0
num_30: .float 29.0
num_60: .float 59.0
def: .float 0.0
.text
#comparador/////////////////////////////////
lwc1 $f10, med
lwc1 $f9, num_30
lwc1 $f11, num_60

#atribuição de variaveis numero /////////////
li $v0, 4 
la $a0, nota1
syscall  
li $v0, 6
syscall 
mov.s $f1, $f0 

li $v0, 4 
la $a0, nota2
syscall  
li $v0, 6
syscall 
mov.s $f2, $f0 

# calculo da media/////////////////////////
add.s $f5, $f2,$f1

div.s $f12, $f5,$f10

#print do resultado da media //////////////
li $v0, 4
la $a0, media
syscall
li $v0, 2
mov.s $f14, $f12
syscall

#comparações de medias(AP, RP, RC)//////////

c.le.s $f2, $f1
bc1t menor
bc1f maior
 
 menor:
li $v0, 4 
la $a0, msg1
syscall
li $v0, 10
syscall
 maior:
li $v0, 4 
la $a0, msg2
syscall
li $v0, 10
syscall