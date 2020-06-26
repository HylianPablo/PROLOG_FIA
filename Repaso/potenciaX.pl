potencia(R,1,R):-!.
potencia(R,X,N):-X1 is X-1,potencia(R,X1,N1),N is N1*R.
