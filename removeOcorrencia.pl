remove(X,[],[]).
remove(X,[X|L],L).
remove(X,[H|T],[H|T1]) :- remove(X,T,T1).

:- initialization(main).
main:-
	read(X),
	read(Z),
	remove(Z,X,R),
	write(R),nl,
halt(0).