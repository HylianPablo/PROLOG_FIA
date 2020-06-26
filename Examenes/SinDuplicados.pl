sinDuplicados([],[]):-!.
sinDuplicados([X|L],[X|Y]):-not(member(X,L)),sinDuplicados(L,Y),!.
sinDuplicados([X|L],Y):-member(X,L),sinDuplicados(L,Y),!.
