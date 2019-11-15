fb(N,X):-N<0,write("Inappropriate value provided as Input!!").
fb(0,0).
fb(1,1).
fb(2,1).
fb(N,X):- N1 is N-1,
fb(N1,X1),
N2 is N-2,
fb(N2,X2),
X is X1+X2.
