notas(joao,5.0,7.0,8.0).
notas(maria,6.0,6.0,6.0).
notas(joana,8,5.1,10.0).
notas(mariana,9.0,9.0,3.0).
notas(cleuza,8.5,7.0,8.6).
notas(jose,3.5,3.0,2.0).
notas(mary,10.0,8.0,7.0).

media(A,M) :- notas(A,X,Y,Z), M is ((X+Y+Z)/3).

aprovado(A,R) :- media(A,M), M >= 7.0, M =< 10, R = "aprovado".
aprovado(A,R) :- media(A,M), M >= 0, M =< 3.9, R = "reprovado".
aprovado(A,R) :- media(A,M), M >= 4.0, M =< 6.9, R = "final".

:- initialization main.
 
main:-
    read(A),
	nl,
	aprovado(A,R),
	write(R),nl,
	halt(0).