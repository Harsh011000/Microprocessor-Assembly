# Harsh Panwar
# E22CSEU0752
.data
	input: .asciiz "Enter Number: "
.text 
	main:
		li $v0,4
		la $a0,input
		syscall
		li $v0,5
		syscall
		move $t0,$v0
		li $t1,2
		div $t0,$t1
		mfhi $t0
		li $v0,1
		la $a0,($t0)
		syscall
	li $v0,10
	syscall