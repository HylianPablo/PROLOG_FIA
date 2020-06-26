s([],Z):-!.
s([X|Y],Z):-member(X,Z),s(Y,Z).
