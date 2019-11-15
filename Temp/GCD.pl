gcd(X,Y,Z):- X<0,write("Inappropriate first term !");Y<0,write("Inappropriate second term").
gcd(0,X,X).
gcd(X,0,X).
gcd(X,Y,Z):- X>=Y,X1 is X-Y, gcd(X1,Y,Z).
gcd(X,Y,Z):- X<Y,X1 is Y-X,gcd(X1,X,Z).
