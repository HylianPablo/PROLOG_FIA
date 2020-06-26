insertar(X,[],[X]).
insertar(X,[H|T],[H|L]):-insertar(X,T,L).
