conc([],[],[]).
conc([],L,L).
conc(L,[],L).

conc([H1|T1],L,[H1|T2]):-
	conc(T1,L,T2).