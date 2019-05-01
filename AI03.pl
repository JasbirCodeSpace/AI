fact(0,1):-!.

fact(N,X):-
	N1 is N-1,
	fact(N1,R),
	X is R*N.