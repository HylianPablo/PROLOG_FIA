c(X,Y,X,[Y|Y1]).
c(X,Y,Z,[T|T1]):-c(X,Y,T,T1).
c(X,Y,[Z|T]):-c(X,Y,Z,T).
