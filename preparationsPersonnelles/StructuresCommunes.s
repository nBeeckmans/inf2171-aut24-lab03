	.eqv Lire 1 
	

# if (sans else) 
	## attention de bien inverser la condition lors de la traduction 
	## en assembleur
	blt t0, t1, Skip_If 
	# code du if 
	
Skip_If:

# if-else 
	ble t0, t1, Else-if
	# Code pour le if 
	
	j Passer_Tout
Else-if: 
	bge t0, t1, Passer_Else_if
	# Code pour le else-if 
	j Passer_Tout
Passer_Else_if : 
	# Code pour le else 

Passer_Tout : 
	# reste du code 

# while (rappel que while == do_while == for) 

Loop : 
	# condition d'arret 
	blt t0, t1, Exit_Loop
	## corps de la boucle while 
	j Loop
	
Exit_Loop: 
