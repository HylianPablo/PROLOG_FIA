lista([],[],[]):-!.
lista([H|T],[H|X],Y):-H>=0,!,lista(T,X,Y).
lista([H|T],X,[H|Y]):-lista(T,X,Y).
