# Harsh Panwar
# E22CSEU0752
.data
	msg: .asciiz "enter msg1: "
	msg2: .asciiz "enter msg2: "
	input1: .space 50     #buffer/address
	inputsize1: .word 49  #char to read
	input2: .space 50
	inputsize2: .word 49
.text 
	main:
		li $v0,4       #print msg1
		la $a0,msg
                syscall
                li $v0,8       #Taking input
                la $a0,input1
                la $a1,inputsize1
                syscall
                li $v0,4       # print msg2
		la $a0,msg2
                syscall
                li $v0,8       # taking input
                la $a0,input2
                la $a1,inputsize2
                syscall
                li $v0,4       # print input 1
                la $a0,input1
                syscall
                li $v0,4       # print input 2
                la $a0,input2
                syscall
	li $v0,10
	syscall
