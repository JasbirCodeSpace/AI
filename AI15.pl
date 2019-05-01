even_length([_,_]).

even_length([_,_|T]):-
	even_length(T).

odd_length([_]).

odd_length([_,_|T]):-
	odd_length(T).

