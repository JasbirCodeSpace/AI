delete_all(X,[],[]).

delete_all(X,[X|T],R):-
	!,
	delete_all(X,T,R).

delete_all(X,[H|T],[H|T1]):-
	!,
	delete_all(X,T,T1).
