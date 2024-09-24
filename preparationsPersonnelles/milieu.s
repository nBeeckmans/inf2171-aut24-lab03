.eqv Lire 	5
.eqv Ecrire 	1
.eqv Exit	10

	li a7, Lire
	ecall 
	mv t0, a0 # t0 a le plus petit nombre pour le moment

	li a7, Lire	
	ecall 

	bgt a0, t0 , passer_tri # si nouvelle valeur > t0 c'est bon
	mv t1, t0 # t1 prends l'ancienne valeur de t0
	mv t0, a0 # on met a0 dans t0 
	j ajouter3e
passer_tri : 
	mv t1, a0 
	 
ajouter3e:
	## ici, on sait que t0 < t1 
	li a7, Lire
	ecall 

	bgt a0, t0, passer_cas_t0_milieu
	## si nouvelle valeure <= t0, on imprime t0 
	## car a0 < t0 < t1
	mv a0, t0
	
	li a7, Ecrire
	ecall
	j fin ## on va a la fin du programme !
passer_cas_t0_milieu : 
	## ici, on a -> nouvelle valeur < t1 ou t1 < nouvelle valeur 
	bgt t1, a0, passer_cas_t1_milieu 
	# t1 <= a0 
	mv a0, t1 
	li a7, Ecrire 
	ecall 
	j fin    
passer_cas_t1_milieu:
	# dernier cas  -> t0 < a0 < t1 
	li a7, Ecrire
	ecall
fin : 
## exit 
li a7, Exit 
ecall 
