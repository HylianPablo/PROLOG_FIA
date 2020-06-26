aplanar([H|T],L):-aplanar(H,C),aplanar(T,C1),append(C,C1,L),!.
aplanar([],[]).
aplanar(X,[X]).
