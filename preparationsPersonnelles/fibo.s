#n = lireNombre();

#a = 0; // nombre courant  s0
#b = 1; // nombre suivant  s1
#i = 0; // compteur	   t0
#while(i<n) {
#	t = a + b;         add t0, s0, s1
#	a = b;	  	   	
#	b = t;            
#	i++;
#}

#afficherNombre(a);

# Appels système utilisés
	.eqv ReadInt, 5
	.eqv Ecrire, 1
	.eqv Exit, 10	
	.eqv PrintChar, 11
	.eqv ReadChar, 12
	
	
	
	li a7, ReadInt
	ecall 
	
	li s0, 0 # a
	li s1, 1 # b 
	li t0, 0 
	
while : 
	bge t0, a0, fin   # while i < n // car si i => n -> on sort
	add t1, s0, s1    # t = a + b
	mv s0, s1	  # a = b 
	mv s1, t1         # b = t 
	addi t0, t0, 1    # i++ 
	j while			

fin : 
	mv a0, s0
	li a7, Ecrire 
	ecall
	
	li a7, Exit 
	ecall
	
	
	
	
	
