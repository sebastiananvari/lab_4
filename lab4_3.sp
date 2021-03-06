
**parameters


*netlist

*subcircuit

.subckt opamp n_pos n_neg n_out
r1 n_pos n_neg 10meg
E1 n1 0 n_pos n_neg 100k
r2 n1 n_out 10
.ends

r0 n1 0 100
r1 n3 n2 100
r2 n4 n2 100


v1 n3 0 sin(0 4/3.1415 10k)
v2 n4 0 sin(0 4/3/3.1415 30k)


x1 n2 n1 nout opamp
rf nout n1 200


*analysis

.tran .1m .5m

.option post = 1
.op
.end
