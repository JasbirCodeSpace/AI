fib(1,0):-!.
fib(2,1):-!.

fib(N,X):-
	N1 is N-1,
	fib(N1,Y1),
	N2 is N-2,
	fib(N2,Y2),
	X is Y1+Y2.