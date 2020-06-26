lista([R,R1|L],R,R1).
lista([R,R1|L],X,Y):-lista([R1|L],X,Y).

