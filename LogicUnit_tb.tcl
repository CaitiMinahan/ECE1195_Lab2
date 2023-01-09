#TCL testbench for the logic unit: 

#restart simulation
restart

#set values for inputs A, B: 
add_force A 00000000000000001111111111111111
add_force B 11111111111111111111111111111111

#now test the logic operation by sending different values to Op(1:0)

#A AND B 
add_force Op(1:0) 00
run 10 ns 

#A OR B 
add_force Op(1:0) 01 
run 10 ns 

#A XOR B 
add_force Op(1:0) 10
run 10 ns 

#A NOR B 
add_force Op(1:0) 11
run 10 ns 

#run simulation 
run 10 ns
