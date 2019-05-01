pow(N,1,N):-!.
pow(N,P,X):-
	P1 is P-1,
	pow(N,P1,X1),
	X is N*X1.