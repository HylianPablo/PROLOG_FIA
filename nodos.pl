enlace(a,b,3).
enlace(a,c,2).
enlace(c,d,4).
enlace(c,e,5).

ruta(X,Y,Z):-enlace(X,Y,Z).
ruta(X,T,W):-enlace(X,Y,Z),ruta(Y,T,V),W is Z+V.
