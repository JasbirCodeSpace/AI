parent(tom,bob).
parent(pan,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

male(tom).
male(bob).
male(pat).

female(pan).
female(liz).
female(ann).


grandparent(X,Y):-
		parent(X,Z),parent(Z,Y).
		
sister(X,Y):-
		parent(Z,X),parent(Z,Y),dif(X,Y).
		
offspring(X,Y):-
		parent(Y,X).
		
hasAChild(X):-
		parent(X,Y).