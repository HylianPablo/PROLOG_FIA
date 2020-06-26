lista([X]):-!.
lista([H,H1|T]):-H=<H1,lista([H1|T]).
