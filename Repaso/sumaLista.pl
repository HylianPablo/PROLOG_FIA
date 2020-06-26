suma([],0):-!.
suma([H|T],X):-suma(T,X1),X is X1+H.
