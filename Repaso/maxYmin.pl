/* Dada una lista, hallar el elemento máximo y el mínimo */

maxmin(L,X,Y):-max(L,X),min(L,Y).

max([X],X):-!.
max([H|T],H):-max(T,X1),H>X1,!.
max([H|T],X):-max(T,X).

min([X],X):-!.
min([H|T],H):-min(T,X1),H<X1,!.
min([H|T],X):-min(T,X).
