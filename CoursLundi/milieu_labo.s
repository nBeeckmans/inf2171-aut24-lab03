.eqv Lire 	5
.eqv Ecrire 	1
.eqv Exit	10

	li a7, Lire
	ecall 
	
	mv s0, a0 
	
	ecall 
	
	blt s0, a0, passer
	mv s1, s0 
	mv s0, a0 
	j comparaison
passer: 
	mv s1, a0
comparaison : 

	# s0 < s1 
	
	ecall 

	bgt a0, s0, passer_cas1 
	ebreak
	# a0 < s0 
	mv a0, s0 
	j passer_cas2

passer_cas1:

	blt a0, s1, passer_cas2
	ebreak
	# s1 < a0
	mv a0, s1 
	
passer_cas2:
 
	li a7, Ecrire
	ecall 
	li a7, Exit
	ecall

	