binario(0,[0]):-!.
binario(1,[1]):-!.
binario(X,L):-H is X mod 2,X1 is floor(X/2),binario(X1,L1),append(L1,[H],L).
