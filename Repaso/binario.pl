lista(0,[0]):-!.
lista(1,[1]):-!.
lista(X,L):-R2 is X mod 2, R1 is floor(X/2),lista(R1,L1),append(L1,[R2],L).

