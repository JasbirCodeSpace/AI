member(X,[X|_]).
member(X,[_|T]):-
	member(X,T).

conc([],[],[]).
conc([],L,L).
conc([H|L1],L2,[H|L3]):-
	conc(L1,L2,L3).	

member1(X,L):-
	conc(_,[X|_],L).

delthree([_,_,_],[]).
delthree([H|T],[H|L1]):-
	delthree(T,L1).

delthree2([_,_,_],[]).
delthree2(L1,L):-
	conc(L,[__,_,_],L1).

evenlength([]).
evenlength([_,_|T]):-
	evenlength(T).

oddlength([_]).
oddlength([_,_|T]):-
	oddlength(T).

reverse([],[]).
reverse([H],[H]).
reverse([H|T],L):-	
	reverse(T,L1),
	conc(L1,[H],L).

palindrome([]).
palindrome([_]).
palindrome([H|T]):-
	conc(M,[H],T),
	palindrome(M).

lastitem(H,[H]).
lastitem(X,[_|T]):-
	lastitem(X,T).	

lastitem2(H,[H]).
lastitem2(X,L):-
	conc(_,[X],L).

insert(X,L,[X|L]).	

deleteitem(X,[X|T],T).
deleteitem(X,[H|T],[H|L]):-
	deleteitem(X,T,L).
	
insert2(X,L,L1):-
	deleteitem(X,L1,L).

sublist([],[]).
sublist(S,L):-
	conc(L1,L2,L),
	conc(S,L3,L2).	

permutation([],[]).
permutation([H|L],L1):-
	permutation(L,L2),
	insert2(H,L2,L1).

permutation2([],[]).
permutation2(L,[H|P]):-
	deleteitem(H,L,L1),
	permutation2(L1,P).	

shift([H],[H]).
shift([H|T],L):-
	conc(T,[H],L).

subset([],[]).
subset([H|T],[H|T1]):-
	subset(T,T1).
subset([H|T],T1):-
	subset(T,T1).


means(0,zero).
means(1,one).
means(2,two).
means(3,three).
means(4,four).
means(5,five).
means(6,six).
means(7,seven).
means(8,eight).
means(9,nine).

translate([],[]).
translate([H|T],[X|Y]):-
	means(H,X),
	translate(T,Y).

dividelist([],[],[]).
dividelist([H],[H],[]).
dividelist([X,Y|T],[X|T1],[Y|T2]):-
	dividelist(T,T1,T2).

		
  move(1,X,Y,_):-write('Move disk from '),write(X),write(' to '),write(Y),nl.
move(N,X,Y,Z):-N>1,M is N-1,
  move(M,X,Z,Y),
  move(1,X,Y,_),
  move(M,Z,Y,X).


range(X,_,X).
range(X,Y,R):-
X1 is X+1,
Y>=X1,
range(X1,Y,R).

split([],[],[]).
split([H|T1],[H|T2],L):-
	H>=0,
	split(T1,T2,L).
split([H|T1],L,[H|T2]):-
	H<0,
	split(T1,L,T2).

difference([],_,[]).

difference([H|T],L1,L):-
	member(H,L1),!,
	difference(T,L1,L).

difference([H|T],L1,[H|L]):-
	difference(T,L1,L).			











	