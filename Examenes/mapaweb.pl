debajo(pagina_principal,formacion).
debajo(pagina_principal,integrar_sistemas).
debajo(formacion,creatividad).
debajo(formacion,innovacion).
debajo(integrar_sistemas,calidad).
debajo(integrar_sistemas,medio_ambiente).
debajo(creatividad,que_es).
debajo(creatividad,guia).
debajo(calidad,iso_xxx).
debajo(guia,que_es_idea).
debajo(guia,como_tener_ideas).
debajo(iso_xxx,sistema_gestion).
debajo(iso_xxx,recursos).

debajo_de(X,Y):-debajo(X,Y).
debajo_de(X,Z):-debajo(X,Y),debajo_de(Y,Z).

encima(X,Y):-debajo(Y,X).
encima_de(X,Y):-encima(X,Y).
encima_de(X,Z):-encima(X,Y),encima_de(Y,Z).

click_abajo(X,Y,N):-debajo(X,Y),N is 1.
click_abajo(X,Y,N):-debajo(X,Z),click_abajo(Z,Y,N1),N is N1+1.

click_arriba(X,Y,N):-click_abajo(Y,X,N).
