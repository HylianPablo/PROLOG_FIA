separar([],[],[]).
separar([H|L],[H|X],Y):-H>=0,!,separar(L,X,Y).
separar([H|L],X,[H|Y]):-separar(L,X,Y).
