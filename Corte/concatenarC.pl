concatenar([],X,X):-!.
concatenar([A|B],C,[A|D]):-concatenar(B,C,D).
