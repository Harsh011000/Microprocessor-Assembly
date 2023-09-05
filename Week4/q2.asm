# Harsh Panwar
# E22CSEU0752
.data
	label1: .asciiz "Input a is: "
	label2: .asciiz "Input b is: "
	label3: .asciiz "Quotient is: "
	label4: .asciiz "Remainder is: "
	labelsp: .asciiz "\n"
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
		
		div $t0,$t0,$t1
		
		li $v0,4
		la $a0,label3
		syscall
		li $v0,1
		la $a0,($t0)
		syscall
		
		li $v0,4
		la $a0,labelsp
		syscall
		
		li $v0,4
		la $a0,label4
		syscall
		
		mfhi $t0
		li $v0,1
		la $a0,($t0)
		syscall
	li $v0,10
	syscall