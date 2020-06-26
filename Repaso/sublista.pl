lista([H|T],H,[]):-!.
lista([H|T],X,[H|T1]):-lista(T,X,T1).

