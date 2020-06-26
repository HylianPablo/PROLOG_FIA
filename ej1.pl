derecha(blanco1,bombilla).
derecha(lupa,blanco1).
derecha(blanco2,lupa).
encima(bombilla,coche).
encima(blanco1,blanco3).
encima(lupa,cafe).
encima(blanco2,balanza).
derecha(blanco3,coche).
derecha(cafe,blanco3).
derecha(balanza,cafe).
encima(coche,tortuga).
encima(blanco3,llave).
encima(cafe,semaforo).
encima(balanza,martillo).
derecha(llave,tortuga).
derecha(semaforo,llave).
derecha(martillo,semaforo).

derecha_de(X,Y):-derecha(X,Y).
derecha_de(X,Z):-derecha(X,Y),derecha_de(Y,Z).

encima_de(X,Y):-encima(X,Y).
encima_de(X,Z):-encima(X,Y),encima_de(Y,Z).

izquierda(X,Y):-derecha(Y,X).
izquierda_de(X,Y):-derecha_de(Y,X).
debajo(X,Y):-encima(Y,X).
debajo_de(X,Y):-encima_de(Y,X).
