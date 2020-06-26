burbuja(L,R):-ordena(L,L1),!,burbuja(L1,R).
burbuja(L,L):-!.
ordena([X,Y|T],[Y,X|T]):-X<Y.
ordena([X|T],[X|T1]):-ordena(T,T1).
