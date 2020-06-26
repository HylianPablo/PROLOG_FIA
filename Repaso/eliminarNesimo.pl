/* La primera posicion es la posicion 0 */
lista([H|L],0,L):-!.
lista([H|T],N,[H|T1]):-N1 is N-1,lista(T,N1,T1).
