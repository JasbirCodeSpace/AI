nth_elem(1,[H|T],H).
nth_elem(N,[H|T],X):-
	N1 is N-1,
	nth_elem(N1,T,X).