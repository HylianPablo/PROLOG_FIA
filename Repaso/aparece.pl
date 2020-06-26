/* Dada una lista, contar lar apariciones de un elemento en la lista */

aparicion(X,[],0):-!.
aparicion(X,[H|T],R):-X=H,!,aparicion(X,T,R1),R is R1+1.
aparicion(X,[H|T],R):-aparicion(X,T,R).
