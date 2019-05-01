insert_nth(1,X,L,[X|L]).

insert_nth(N,X,[H|T],[H|L]):-
	N1 is N-1,
	insert_nth(N1,X,T,L).
	