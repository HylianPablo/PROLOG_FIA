signo(acuario,da(20,1),da(18,2)).
signo(piscis,da(19,2),da(20,3)).
signo(aries,da(21,3),da(19,4)).
signo(tauro,da(20,4),da(20,5)).
signo(geminis,da(21,5),da(21,6)).
signo(cancer,da(22,6),da(22,7)).
signo(leo,da(23,7),da(22,8)).
signo(virgo,da(23,8),da(22,9)).
signo(libra,da(23,9),da(23,10)).
signo(escorpio,da(24,10),da(21,11)).
signo(sagitario,da(22,11),da(21,12)).
signo(capricornio,da(22,12),da(19,1)).

signo(da(D,M)):-signo(Sign,da(_,_),da(D1,M1)),M=M1,D=<D1,write(Sign).
signo(da(D,M)):-signo(X,da(D1,M1),da(_,_)),M=M1,D>=D1,write(Sign).

