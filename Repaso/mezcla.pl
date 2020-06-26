lista([],[],[]):-!.
lista([X|T1],[Y|T2],[X|[Y|T]]):-lista(T1,T2,T).
