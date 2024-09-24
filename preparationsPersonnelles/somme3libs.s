	call readInt 
	mv s0, a0 
	
	call readInt
	add s0, s0, a0 
	
	call readInt 
	add a0, s0, a0
	
	call printInt
	
	
	# simplifie l'affichage sur le terminal ! 
	li a0, '\n'
	call printChar
	
	call exit
	