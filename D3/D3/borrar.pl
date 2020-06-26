borra(T,L,L).
borra(T,[X|Y],L):-T=X,borra(T,Y,L).
borra(T,[X|Y],L):-T\=X, borra(T,Y,L).
