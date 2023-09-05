# Harsh Panwar
# E22CSEU0752
.data
	msg: .asciiz "Harsh Panwar\n"
	#msg2: .asciiz "hello" :=label
.text 
	main:
		li $v0,4
		la $a0,msg
                syscall
                #li $v0,4   li=load immediate
		#la $a0,msg2 la=load address
                #syscall  provide system service
	li $v0,10    # to end program
	syscall      #
