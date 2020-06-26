lista(L,X,Y):-positivos(L,X),negativos(L,Y).

positivos([],[]).
positivos([H|L],[H|X]):-H>=0,!,positivos(L,X).
positivos([H|L],X):-positivos(L,X).

negativos([],[]).
negativos([H|L],[H|X]):-H<0,!,negativos(L,X).
negativos([H|L],X):-negativos(L,X).
