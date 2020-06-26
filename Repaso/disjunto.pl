s([],Z):-!.
s([X|Y],Z):-not(member(X,Z)),!,s(Y,Z).
