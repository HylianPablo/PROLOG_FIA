lista(X,[],[]):-!.
lista(X,[H|T],[H|T1]):-H>X,!,lista(X,T,T1).
lista(X,[H|T],L):-lista(X,T,L).
