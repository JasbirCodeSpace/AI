fact(N,X):-N<0,write("Inapproprite value computation!!").
fact(0,X):- X is 1.
fact(N,X):- N1 is N-1,fact(N1,X1),X is X1*N.
