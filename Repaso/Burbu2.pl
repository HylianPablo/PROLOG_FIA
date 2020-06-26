burbuja(X,L):-ordena(X,L1),!,burbuja(L1,L).
burbuja(L,L).
ordena([X,Y|L],[Y,X|L]):-X>Y.
ordena([X|R],[X|L]):-ordena(R,L).
