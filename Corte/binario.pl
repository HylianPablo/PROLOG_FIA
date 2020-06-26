binario(X,L):-binario(X,[],L).
binario(0,L,[0,L]).
binario(1,L,[1,L]).
binario(X,L,R):-T is X/2, T2 is floor(T),T1 is X mod 2,binario(T2,[T1|L],R).

