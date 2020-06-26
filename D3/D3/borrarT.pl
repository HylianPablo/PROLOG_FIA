borrar(X,[X|Resto],Resto).
borrar(X,[Y|Resto],[Y|Resto1]):-borrar(X,Resto,Resto1).
