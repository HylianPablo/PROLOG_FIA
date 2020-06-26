jefe_de(director_general, responsable_de_calidad).
jefe_de(responsable_de_calidad, responsable_de_tesoreria).
jefe_de(responsable_de_calidad, responsable_de_ventas).
jefe_de(responsable_de_calidad, responsable_comercial).
jefe_de(responsable_de_tesoreria, asesor).
jefe_de(asesor, contable).
jefe_de(responsable_de_ventas, operario1).
jefe_de(responsable_de_ventas, operario2).
jefe_de(operario1, reparto1).
jefe_de(operario2, reparto2).
jefe_de(responsable_comercial, vendedor1).
jefe_de(responsable_comercial, vendedor2).

jefe(X,Y):- jefe_de(X,Y).
jefe(X,Y):- jefe_de(X,W), jefe(W,Y).

subordinado_de(X,Y):-jefe_de(Y,X).
subordinado(X,Y):-subordinado_de(X,Y).
subordinado(X,Z):-subordinado_de(X,Y),subordinado(Y,Z).

nivel_hacia_abajo(X,Y,N):- jefe_de(X,Y), N is 1.
nivel_hacia_abajo(X,Y,N):- jefe_de(X,Z), nivel_hacia_abajo(Z,Y, N1), N is N1 + 1.

nivel_hacia_arriba(X,Y,N):-subordinado_de(X,Y), N is 1.
nivel_hacia_arriba(X,Z,N):-subordinado_de(X,Y),nivel_hacia_arriba(Y,Z,N1),N is N1+1.

