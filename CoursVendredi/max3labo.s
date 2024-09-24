	.eqv Lire 5
	.eqv Ecrire 1
	.eqv Exit 10
	
	li a7, Lire 
	ecall 
	# a0 contient + grande valeur
	
	mv s0, a0 
	
	li a7, Lire 
	ecall
	
	# if ( a0 > s0 ) 
	#	s0 = a0 
	# if (a0 < s0) 
	# // je fais rien 
	# else 
	#  	s0 = a0 
	blt a0, s0 passer_remplacement_1
	mv s0, a0 
passer_remplacement_1 :
	
	li a7, Lire 
	ecall 
	
	blt a0, s0 passer_remplacement_2
	mv s0, a0 
passer_remplacement_2 :	
	
	
	mv a0, s0 
	li a7, Ecrire 
	ecall 
	
	li a7, Exit 
	ecall 
	
	