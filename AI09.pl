edge(a,b).
edge(b,c).
edge(c,d).
edge(d,e).

route(A,B):-
	edge(A,B).
route(A,B):-
	edge(A,C),route(C,B).

