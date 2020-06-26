concatenar([],L,L).
concatenar([X|L1],L2,[X|L3]):-concatenar(L1,L2,L3).
miembro(X,L):-concatenar(L1,[X|L2],L).
