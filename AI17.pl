is_member(X,[X|_]).

is_member(X,[_|T]):-
	is_member(X,T).

remove_dup([],[]).

remove_dup([H|T],R):-
	is_member(H,T),
	remove_dup(T,R).

remove_dup([H|T],[H|L]):-
	not(is_member(H,T)),
	remove_dup(T,L).

