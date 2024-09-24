	.eqv Ecrire 1 
	.eqv Exit 10
	.eqv Lire 5 
	
	li a7, Lire
	ecall 
	
	mv t0, a0 
	
	ecall 
	blt a0, t0, passe 
	mv t0, a0
passe : 
	
	ecall 
	blt a0, t0, passe_2 
	mv t0, a0
passe_2 : 
	
	mv a0, t0 
	li a7, Ecrire 
	ecall
	
	li a7, Exit 
	ecall 