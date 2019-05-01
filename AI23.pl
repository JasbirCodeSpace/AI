dmerge([],L,L).
dmerge(L,[],L).

dmerge([H1|T1],[H2|T2],[H1|T3]):-
	H2>=H1,dmerge(T1,[H2|T2],T3).
dmerge([H1|T1],[H2|T2],[H2|T3]):-
	dmerge([H1|T1],T2,T3).	