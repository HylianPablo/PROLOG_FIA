lista([],L,L):-!.
lista([X|L],Y,[X|T]):-lista(L,Y,T).
