# Appels système utilisés
	.eqv ReadInt, 5
	.eqv Exit, 10	
	.eqv PrintChar, 11
	.eqv ReadChar, 12
	
	
	.eqv Plage 26
	.eqv Plage_neg -26
# debut programme 
	li a7, ReadInt
	ecall 
	
	mv s2, a0  ## S0 contient le decalage 
	
	li s0, 'A' 
	li s1, 'Z'  
loop: 
	li a7, ReadChar
	ecall 
	## Conditions d'arret de la boucle while 
	blt a0, s0, Fin
	bgt a0, s1, Fin
	##
	add a0, a0, s2 # ajouter le decalage !

	# si le decalage necessite une correction positive 
compenser_plus:
	bge a0, t0, compenser_moins   
	addi a0, a0, Plage
	j compenser_plus
	
	# si le decalage necessite une correction negative
compenser_moins:
	ble a0, t1, fin_compenser
	addi a0, a0, Plage_neg
	j compenser_moins
fin_compenser:
	
	li a7, PrintChar
	ecall
	j loop
Fin:
	li a0, Exit
	ecall

# fin programme 
