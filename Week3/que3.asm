# Harsh Panwar
# E22CSEU0752
.data
	prompt1: .asciiz "Name:"
	prompt2: .asciiz "Birth Year"
	name: .space 50
	namesz: .word 49
	out1: .asciiz "He is "
	out2: .asciiz "-year-old!!"
	space: .ascii "\n"
.text
	main:
		li $v0,4
		la $a0,prompt1
		syscall
		li $v0,8
		la $a0,name
		la $a1,namesz
		syscall
		li $v0,4
		la $a0,prompt2
		syscall
		li $v0,5
		syscall
		move $t0,$v0
		li $t1,2023
		sub $t0,$t1,$t0
		
		li $v0,4
		la $a0,name
		syscall
		
		li $v0,4
		la $a0,out1
		syscall
		li $v0,1
		la $a0,($t0)
		syscall
		li $v0,4
		la $a0,out2
		syscall
	li $v0,10
	syscall