conc([],[],[]).
conc([],L,L).
conc(L,[],L).

conc([H1|T1],[H2|T2],[H1|L]):-
	conc(T1,[H2|T2],L).

palindrome([]).
palindrome([X]).

palindrome([H|T]):-
	conc(M,[H],T),
	palindrome(M).
