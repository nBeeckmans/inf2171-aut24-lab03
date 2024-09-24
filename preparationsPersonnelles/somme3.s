# Nos constantes
.eqv Lire 5 
.eqv Ecrire 1
.eqv Exit 10

### Implementation naive ( a7 ne change pas donc peut utile de faire 
### "li" a chaque fois !)

# Clavier.LireInt()
li a7, Lire
ecall 
mv s0, a0 

# Clavier.LireInt()
li a7, Lire
ecall
mv s1, a0 

# Clavier.LireInt()
li a7, Lire 
ecall
mv s2, a0 

# Si on veut s'assurer que le a0 est vide 
# li a0, 0 
# add a0, a0, s0 
# add a0, a0, s1 
# add a0, a0, s2 

# Meilleure implementation (a0 contient deja la 3e valeure)
add a0, a0, s0 
add a0, a0, s1

### Pour une encore meilleur implementation allez voir la 
### correction officielle :) 

# System.out.println(<int>)
li a7, Ecrire
ecall 


li a7, Exit
ecall
