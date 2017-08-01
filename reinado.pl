reinado(rhodi, 844, 878).
reinado(anarawd, 878, 916).
reinado(hywel_dda, 916, 950).
reinado(lago_ap_idwal, 950, 979).
reinado(hywal_ap_Ieuaf, 979, 965).
reinado(cadwallon, 985, 986).
reinado(maredudd, 986, 999).

rei(R, X) :- reinado(R, I, F), X >= I, X =< F.

:- initialization(main).

main:-
	read(A),
	rei(R, A),
	write(R),nl,
halt(0).