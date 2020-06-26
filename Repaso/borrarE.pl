lista(X,[X|L],L).
lista(X,[H|T],[H|T1]):-lista(X,T,T1).
