lista([],[]):-!.
lista([X|L],[M|N]):-genera(X,M),lista(L,N).

genera(M,L):-M>0,genera(1,M,L).
genera(M,M,[M]):-!.
genera(M,N,[M|L]):-M1 is M+1,genera(M1,N,L).

