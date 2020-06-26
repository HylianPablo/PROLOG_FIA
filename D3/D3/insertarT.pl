insertar(X,L,[X|L]).
insertar(X,[L|CL],[L|CY]):-insertar(X,CL,CY).
