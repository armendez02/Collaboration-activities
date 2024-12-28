.data
	#How to Use Jump and Link 
	#Jump Register Unconditionally...

.text
	main:		
		#Intialized the numbers
		addi $a1, $zero, 20
		addi $a2, $zero, 10
		
		#jump and link to the name indicated
		jal multNumbers
	
		li $v0, 1
		addi $a0, $v1, 0
		syscall
		
		#executes or stops the program.
		li $v0, 10
		syscall
		
	#name link	
	multNumbers:
		mul $v1, $a1, $a2
		#jump register back to the original caller.
		jr $ra
