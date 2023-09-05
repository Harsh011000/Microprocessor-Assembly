# Harsh Panwar
# E22CSEU0752
.data
	intgerib: .asciiz "Enter integer1: "
	intgeric: .asciiz "Enter integer2: "
	intgerid: .asciiz "Enter integer3: "
	space: .ascii "\n"
.text
	main:
		li $v0,4
		la $a0,intgerib
		syscall
		li $v0,5   #integer input
		syscall
		move $t0,$v0
		li $v0,4
		la $a0,intgeric
		syscall
		li $v0,5
		syscall
		move $t1,$v0
		li $v0,4
		la $a0,intgerid
		syscall
		li $v0,5
		syscall
		move $t2,$v0
		mul $t0,$t0,$t1
		sub $t0,$t0,$t2
		
		li $v0,1   #print integer
		la $a0,($t0)
		syscall
		li $v0,4
		la $a0,space
		syscall
		
		addi $t0,$t0,10
		
		li $v0,1
		la $a0,($t0)
		syscall
		li $v0,4
		la $a0,space
		syscall
		mul $t0,$t0,5
		
		li $v0,1
		la $a0,($t0)
		syscall
	li $v0,10
	syscall
		
		
