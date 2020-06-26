/* Dada una lista, generar dos sublistas con elementos en las posiciones pares e impares */

lista(L,X,Y):-lista(L,X,Y,N).
lista([],[],[],0).
lista([H|T],[H|X],Y,N):-lista(T,X,Y,N1),R is N1 mod 2,R=0,!,N is N1+1.
lista([H|T],X,[H|Y],N):-lista(T,X,Y,N1),N is N1+1.
