
**parameters


*netlist

*subcircuit

.subckt opamp n_pos n_neg n_out
r1 n_pos n_neg 10meg
E1 n1 0 n_pos n_neg 100k
r2 n1 n_out 10
.ends

r0 n1 0 1k
r1 n3 n2 10k

l1 n2 0 10m
c1 n2 0 25.3n

v1 n3 0 pulse -1 1 0 1f 1f .05m .1m 



x1 n2 n1 nout opamp
rf nout n1 2k


*analysis

.tran  1n 30m

.option post = 1
.op
.end
