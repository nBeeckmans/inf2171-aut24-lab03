	.eqv Lire 5 
	.eqv Ecrire 1 
	.eqv Exit 10
	
	li a7, Lire
	ecall 
	
	mv t0, a0 
	
	ecall 
	add t0, t0, a0 
	
	ecall 
	add a0, t0, a0 
	
	li a7, Ecrire 
	ecall
	
	li a7, Exit 
	ecall 