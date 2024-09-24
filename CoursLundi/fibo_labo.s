#// F(0) = 0 ; F(1) = 1 ; et F(n) = F(n-1) + F(n-2) pour tout n > 1
#n = lireNombre();

#a = 0; // nombre courant
#b = 1; // nombre suivant
#i = 0; // compteur
#while(i<n) {
#	t = a + b;
#	a = b;
#	b = t;
#	i++;
#}

#afficherNombre(a);

	.eqv Ecrire 1 
	.eqv Exit 10
	.eqv Lire 5 
	
	li a7, Lire 
	ecall 
	
	mv s0, a0 
	
	li s1, 0
	li s2, 1 
	li s3, 0 
	
Loop : 
	bge s3, s0, Exit_Loop
	## corps de la boucle while 
	add t0, s1, s2 
	mv  s1, s2
	mv  s2, t0 
	addi s3, s3, 1
	j Loop
Exit_Loop: 
	mv a0, s1
	
	li a7, Ecrire 
	ecall
	
	li a7, Exit 
	ecall 