borrar(X,[X|Y],Y).
borrar(X,[L|Y],[L|Y1]):-borrar(X,Y,Y1).
