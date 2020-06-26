jefe(director_general,responsable_calidad).
jefe(responsable_calidad,responsable_ventas).
jefe(responsable_calidad,responsable_tesoreria).
jefe(responsable_calidad,responsable_comercial).
jefe(responsable_tesoreria,asesor).
jefe(asesor,contable).
jefe(responsable_ventas,operario1).
jefe(responsable_ventas,operario2).
jefe(operario1,reparto1).
jefe(operario2,reparto2).
jefe(responsable_comercial,vendedor1).
jefe(responsable_comercial,vendedor2).

jefe_de(X,Y):-jefe(X,Y).
jefe_de(X,Z):-jefe(X,Y),jefe_de(Y,Z).

subordinado(X,Y):-jefe(Y,X).
subordinado_de(X,Y):-subordinado(X,Y).
subordinado_de(X,Z):-subordinado(X,Y),subordinado_de(Y,Z).

niveles(X,Y,N):-jefe(X,Y),N is 1,!.
niveles(X,Z,N):-jefe(X,Y),niveles(Y,Z,N1),!,N is N1+1.
