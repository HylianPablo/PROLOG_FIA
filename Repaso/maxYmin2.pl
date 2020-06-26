lista(L,X,Y):-max(L,X),min(L,Y).

max([X],X):-!.
max([H|T],H):-max(T,H1),H>H1,!.
max([H|T],H1):-max(T,H1).

min([X],X):-!.
min([H|T],H):-min(T,H1),H<H1,!.
min([H|T],H1):-min(T,H1).
