li s7, 0x76543210
add s8, s7 ,s7

li s0, 11
li s1, 13

# 1
add s3, s0, s1

# 2
addi t0, s1, -100
add s4, t0, s0

# 3  s5 = (s0-5)-(s1-3)

addi t0, s0, -5
addi t1, s1, -3
sub  s5, t0, t1

# 4 s6 = s0*10 

add t0, s0, s0 # t0 = 2 * s0
add t1, t0, t0 # t1 = 4 * s0 
add t2, t1, t1 # t2 = 8 * s0
add s6, t0, t2 # s6 = 2 * s0 + 8 * s0 = 10 * s0  


