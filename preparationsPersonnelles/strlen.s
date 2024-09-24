	.eqv Ecrire, 1 
	.eqv Lire, 12
	.eqv Exit, 10

	li s0, 0 
	li t0, '.'
	li t1, -1
	li a7, Lire
	
loop: ## boucle de lecture des characteres
	ecall 				# lecture du char
	beq a0, t0, fin_point		# si char == '.' on sort
	beq a0, t1, fin_de_mot		# si char == vide on sort dans "sortie d'erreur"
	
	addi s0, s0, 1			# s0++ (notre compteur de char)
	
	j loop
fin_point: 
	li a7, Ecrire
	mv a0, s0
	ecall 

## ne fait pas partie de la correction officielle !
fin_de_mot: 	
	li a7, Exit
	ecall
