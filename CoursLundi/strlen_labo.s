	.eqv Lire 	12
	.eqv Ecrire 	1
	.eqv Exit	10

	
	li s5, '.'
	li s0, 0 
	li a7, Lire 

Loop : 
	ecall  
	beq a0, s5, Exit_Loop 
	addi s0, s0, 1
	j Loop
	
Exit_Loop: 

	mv a0, s0
	
	li a7, Ecrire 
	ecall 
	
	li a7, Exit
	ecall 
