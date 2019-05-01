conc([],[],[]).
conc([],L,L).
conc(L,[],L).

conc([H1|T1],L2,[H1|T3]):-
	conc(T1,L2,T3).

reverse([],[]).


reverse([H|T],L):-
	reverse(T,L1),
	conc(L1,[H],L).