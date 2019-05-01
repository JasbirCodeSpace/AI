pow(N,1,N):-!.
pow(N,P,X):-
	P1 is P-1,
	pow(N,P1,Y),
	X is N*Y.

toh(N,X):-
	pow(2,N,Y),
	X is Y-1.	

move(1,X,Y,_):-
	write("Move disk from "),write(X),write(" to "),write(Y),nl.

move(N,X,Y,Z):-
	N>1,
	M is N-1,
	move(M,X,Z,Y),
	move(1,X,Y,_),
	move(M,Z,Y,X).
