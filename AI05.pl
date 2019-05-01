gcd(0,X,X):-
X>0,!.

gcd(N1,N2,X):-
	N1>=N2,
	M1 is N1-N2,
	gcd(M1,N2,X).
gcd(N1,N2,X):-
	N2>N1,	
	M1 is N2-N1,
	gcd(M1,N1,X).