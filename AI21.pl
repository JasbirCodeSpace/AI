delete_nth(1,[_|T],T).

delete_nth(N,[H|T],[H|L]):-
	N1 is N-1,
	delete_nth(N1,T,L).