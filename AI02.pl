max(X,Y,R):-
	X>=Y,
	R is X,!.

max(_,Y,R):-
	R is Y.
