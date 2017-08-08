concatenar([], L, L).
concatenar([H|T], L, [H|D]) :- concatenar(T, L, D).
invertido([], []).
invertido([H|T], L) :- invertido(T, X), concatenar(X, [H], L).

:- initialization(main).
main:-
	read(L),
	invertido(L, R),
	write(R),nl,
halt(0).