burbuja(L,R):-permuta(L,L1),!,burbuja(L1,R).
burbuja(L,L).
permuta([X,Y|R],[Y,X|R]):-X>Y.
permuta([X|T],[X|R1]):-permuta(T,R1).
