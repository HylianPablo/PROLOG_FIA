libro_de_familia(
esposo(nombre(antonio,garcia,fernandez), profesion(arquitecto), salario(30000)),
esposa(nombre(ana,ruiz,lopez), profesion(docente), salario(12000)),
domicilio(sevilla)).

libro_de_familia(
esposo(nombre(luis,alvarez,garcia), profesion(arquitecto), salario(40000)),
esposa(nombre(ana,romero,soler), profesion(sus_labores), salario(0)),
domicilio(sevilla)).

libro_de_familia(
esposo(nombre(bernardo,bueno,martinez), profesion(docente), salario(12000)),
esposa(nombre(laura,rodriguez,millan), profesion(medico), salario(25000)),
domicilio(cuenca)).

libro_de_familia(
esposo(nombre(miguel,gonzalez,ruiz), profesion(empresario), salario(40000)),
esposa(nombre(belen,salguero,cuevas), profesion(sus_labores), salario(0)),
domicilio(dos_hermanas)).

profesion(X,Y):-libro_de_familia(esposo(nombre(Y,_,_),profesion(X),_),esposa(_,_,_),domicilio(_)).
profesion(X,Y):-libro_de_familia(esposo(_,_,_),esposa(nombre(Y,_,_),profesion(X),_),domicilio(_)).

ingresos(X,Y,N):-libro_de_familia(esposo(nombre(X,_,_),_,salario(T1)),esposa(nombre(Y,_,_),_,salario(T2)),_),N is T1+T2.

maximo(X,Y,N):-libro_de_familia(esposo(nombre(X,_,_),_,salario(T1)),esposa(nombre(Y,_,_),_,salario(T2)),_),N =< T1+T2.
