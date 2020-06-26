transporte(roma,200).
transporte(londres,250).
transporte(tunez,150).

hotel(roma,250).
hotel(londres,150).
hotel(tunez,100).

hostal(roma,150).
hostal(londres,100).
hostal(tunez,80).

camping(roma,100).
camping(londres,50).
camping(tunez,50).

total(hotel(X,J),D,P):-P is J*D.

viaje(X,D,P):-write("hotel"),hotel(X,Y),transporte(X,T),T2 is Y*D,P is T+T2.
viaje(X,D,P):-write("hostal"),hostal(X,Y),transporte(X,T),T2 is Y*D,P is T+T2.
viaje(X,D,P):-write("camping"),camping(X,Y),transporte(X,T),T2 is Y*D,P is T+T2.
