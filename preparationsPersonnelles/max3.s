# Nos constantes
.eqv Lire 5 
.eqv Ecrire 1
.eqv Exit 10

	li a7, Lire 
	ecall 
	
	mv s0, a0 # s0 contiendra le max 
	
	ecall 

	blt a0, s0, passer_2_e_valeur
 	# nouvelle valeur est plus grande 
 	mv s0, a0  
 	
passer_2_e_valeur :  
	ecall 
	
	## si on a a0 (nouvelle valeur) => s0 (notre max), on imprime a0
	bgt a0, s0, passer_etape_intermediaire 
	## sinon on assigne s0 a a0 en etape intermediaire
	mv a0, s0 
passer_etape_intermediaire:
	
	li a7, Ecrire 
	ecall 
	
	li a7, Exit
	ecall  
 	

