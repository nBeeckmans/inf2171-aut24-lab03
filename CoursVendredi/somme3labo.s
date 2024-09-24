	.eqv Lire 5
	.eqv Ecrire 1
	.eqv Exit 10
	
	li a7, Lire 
	ecall 
	## a0 = la valeur lue
	
	mv s0, a0 
	
	li a7, Lire 
	ecall
	
	add s0, s0, a0 
	## on a s0 = num1 + num2  
	
	li a7, Lire 
	ecall 
	
	add a0, a0, s0 
	
	li a7, Ecrire 
	ecall 
	# donne la somme des trois num au terminal 
	
	li a7, Exit 
	ecall 
	
	