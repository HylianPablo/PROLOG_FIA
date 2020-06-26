jefe(dir_gen,resp_cal).
jefe(resp_cal,resp_tes).
jefe(resp_cal,resp_ven).
jefe(resp_cal,resp_com).
jefe(resp_tes,asesor).
jefe(asesor,contable).
jefe(resp_ven,op1).
jefe(resp_ven,op2).
jefe(op1,rp1).
jefe(op2,rp2).
jefe(resp_com,ven1).
jefe(resp_com,ven2).

superior(X,Y,Z):-jefe(X,Y,Z).
superior(X,Z,T):-jefe(X,Y,T),superior(Y,Z,T).
nivelesS(X,Z,T3):- T is 1,jefe(X,Y),T2 is T+1,superior(Y,Z),T3 is T2+1.

subordinado(X,Y):-jefe(Y,X).
inferior(X,Y):-subordinado(X,Y).
inferior(X,Z):-subordinado(X,Y),inferior(Y,Z).
nivelesI(X,Z,T3):- T is 1,subordinado(X,Y),T2 is T+1,inferior(Y,Z),T3 is T2+1.

