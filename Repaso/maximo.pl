lista([X],X):-!.
lista([H|T],H):-lista(T,R1),H>R1,!.
lista([H|T],R1):-lista(T,R1).
