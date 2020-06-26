transporte(roma,200).
transporte(londres,250).
transporte(tunez,150).

alojamiento(hotel,roma,250).
alojamiento(hotel,londres,150).
alojamiento(hotel,tunez,100).

alojamiento(hostal,roma,150).
alojamiento(hostal,londres,100).
alojamiento(hostal,tunez,80).

alojamiento(camping,roma,100).
alojamiento(camping,londres,50).
alojamiento(camping,tunez,50).

precio(X,Y,Z,T1):-transporte(Y,Z1),alojamiento(X,Y,Z2),T is Z2*Z,T1 is T+Z1.
