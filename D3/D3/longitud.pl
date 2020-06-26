tam(X,T):-tam(X,0,T).
tam([],T,T).
tam([_|X],U,T):-U1 is U+1, tam(X,U1,T).
