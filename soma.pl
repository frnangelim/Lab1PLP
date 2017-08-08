remove(_,[],[]).
remove(X,[X|T],L) :- remove(X,T,L).
remove(X,[Y|T],[Y|T1]) :- X \== Y, remove(X,T,T1).

removeRepetidos([],[]).
removeRepetidos([H|T],[H|T1]) :- remove(H,T,L), removeRepetidos(L,T1).

soma([],0).
soma([H|T],S) :- soma(T,G),S is H+G.

somaNaoRepetidos(L,R) :- removeRepetidos(L,L1), soma(L1,R).

:- initialization(main).
main:-
	read(X),
	somaNaoRepetidos(X,R),
	write(R),nl,
halt(0).