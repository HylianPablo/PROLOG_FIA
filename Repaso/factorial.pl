factorial(1,1):-!.
factorial(X,N):-X1 is X-1,factorial(X1,N1),N is X*N1.
