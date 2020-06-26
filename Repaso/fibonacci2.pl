fibonacci(X,R):-fibonacci(X,T,R).
fibonacci(0,1,1):-!.
fibonacci(X,T,R):-X1 is X-1,fibonacci(X1,T1,R1),T is R1, R is T1+R1.
