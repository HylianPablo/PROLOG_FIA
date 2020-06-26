lista(X,L,[X|L]).
lista(X,[H|T],[H|T1]):-lista(X,T,T1).
