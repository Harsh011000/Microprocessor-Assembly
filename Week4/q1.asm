# Harsh Panwar
# E22CSEU0752
.data
	label1: .asciiz "Enter first number: "
	label2: .asciiz "Enter Second number: "
	label3: .asciiz "Result is: "
.text
	main:
		li $v0,4
		la $a0,label1
		syscall
		li $v0,5
		syscall
		move $t0,$v0
		
		li $v0,4
		la $a0,label2
		syscall
		li $v0,5
		syscall
		move $t1,$v0
		
		mul $t0,$t0,$t1
		
		li $v0,4
		la $a0,label3
		syscall
		li $v0,1
		la $a0,($t0)
		syscall
	li $v0,10
	syscall