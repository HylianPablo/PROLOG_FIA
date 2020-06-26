dupla(0,[0,0]):-!.
dupla(N,[N,N|T]):-N1 is N-1,dupla(N1,T).
