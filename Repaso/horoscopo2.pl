signo(aries,20,3,19,4).
signo(tauro,20,4,20,5).
signo(geminis,21,5,20,6).
signo(cancer,21,6,22,7).
signo(leo,23,7,22,8).
signo(virgo,23,8,22,9).
signo(libra,23,9,22,10).
signo(escorpio,23,10,21,11).
signo(sagitario,22,11,21,12).
signo(capricornio,22,12,19,1).
signo(acuario,20,01,17,2).
signo(piscis,18,2,19,3).

horoscopo(X,Y,S):-signo(S,X1,Y,_,_),X>=X1,!.
horoscopo(X,Y,S):-signo(S,_,_,X1,Y),X=<X1,!.
