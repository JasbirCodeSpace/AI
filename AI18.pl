maxlist([H],H).
maxlist([H|T],MAX):-
	maxlist(T,MAX1),
	H > MAX1,
	MAX = H;
	MAX = MAX1.