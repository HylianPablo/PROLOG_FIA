sum([X|Y],T):-sum(Y,X,T).
sum([],T,T).
sum([X|Y],U,T):-U1 is U+X,sum(Y,U1,T).
