noun([dog|X],X).
noun([cat|X],X).
noun([mouse|X],X).

adjective([small|X],X).
adjective([big|X],X).

verb([chases|X],X).
verb([ate|X],X).

determiner([the|X],X).
determiner([a|X],X).


np(I,X):-
	determiner(I,R1),noun(R1,X).
np(I,X):-
	determiner(I,R1),adjective(R1,R2),noun(R2,X).	

vp(I,X):-
	verb(I,R),np(R,X).

sentence(I,O):-
	np(I,R),vp(R,O).



