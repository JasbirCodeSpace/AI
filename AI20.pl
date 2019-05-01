sublist([],_).
sublist([H|T],[H|T2]):-
	sublist(T,T2).

sublist([H|T],[H1|T1]):-
	sublist([H|T],T1).	
