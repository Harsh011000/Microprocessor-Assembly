# Harsh Panwar
# E22CSEU0752
.data
	label1: .asciiz "Enter the string: "
	label2: .asciiz "String is: "
	inputstr: .space 50
	inputsz: .word 49
.text
	main:
		li $v0,4
		la $a0,label1
		syscall
		
		li $v0,8
		la $a0,inputstr
		la $a1,inputsz
		syscall
		
		li $v0,4
		la $a0,label2
		syscall
		
		li $v0,4
		la $a0,inputstr
		syscall
	li $v0,10
	syscall