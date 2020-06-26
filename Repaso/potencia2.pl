potencia(1,2):-!.
potencia(X,N):-X1 is X-1,potencia(X1,N1),N is N1*2.
