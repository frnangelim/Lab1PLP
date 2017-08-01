populacao(brasil,200).
populacao(eua,320).
populacao(canada,35).
populacao(india,1200).
populacao(china,1300).
populacao(japao,127).
populacao(russia,142).

territorio(brasil,8).
territorio(eua,9).
territorio(canda,9).
territorio(india,3).
territorio(china,9).
territorio(japao,1).
territorio(russia,17).

densidade(X,R) :- territorio(X,Y),populacao(X,Z), R = Z/Y.
maiordensidade(A,B,R) :- densidade(A,D1),densidade(B,D2), D1 >= D2, R = D1.
maiordensidade(A,B,R) :- densidade(A,D1),densidade(B,D2), D1 < D2, R = B.

:- initialization main.
main:-
   	read(A),
	nl,
	read(B),
	nl,
	maiordensidade(A,B,R),
	write(R),nl,
	halt(0).
    