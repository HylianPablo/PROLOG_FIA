familia(persona(juan,perez,5000),persona(maria,alonso,10000),
	[persona(carlos,perez,0),persona(andres,perez,0),persona(elena,perez,200)]).

familia(persona(pedro,lopez,25000),persona(carmen,ruiz,15000),
	[persona(carlos,lopez,1000),persona(teresa,lopez,0)]).

sueldo(persona(_,_,X),X).

recorrer([X|[]],R):-sueldo(X,R).
recorrer([X|L],R):-sueldo(X,T),recorrer(L,R1),R is R1+T.

total([X,Y|Z],I):-familia(X,Y,Z), recorrer(Z,R2),sueldo(X,R), sueldo(Y,R1),I is R+R1+R2.
