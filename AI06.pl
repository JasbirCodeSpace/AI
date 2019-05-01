mul(1,N,N):-!.
mul(N,1,N).

mul(N1,N2,X):-
	M1 is N1-1,
	mul(M1,N2,X1),
	X is X1+N2. 