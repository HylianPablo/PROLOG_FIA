lista([],[]):-!.
lista([H|T],X):-lista(T,X1),append(X1,[H],X).
