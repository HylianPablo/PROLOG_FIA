lista([],[],[]):-!.
lista([X|T],[X|T1],Y):-lista(T,T1,Y),X mod 2=:=0,!.
lista([X|T],Y,[X|T1]):-lista(T,Y,T1).
