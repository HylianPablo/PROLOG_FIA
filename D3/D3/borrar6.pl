borrar(R,[X|R],X).
borrar(R,[X|Y],[X|Y1]):-borrar(R,Y,X).
