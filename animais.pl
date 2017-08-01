passaro(joao).
peixe(pedro).
minhoca(maria).
gato(miau).
pessoa(eu).
amigo(miau,eu).


come(miau,X) :- gosta(miau,X), passaro(X).
come(miau,X) :- gosta(miau,X), peixe(X).
come(miau,X) :- gosta(miau,X), minhoca(X).
come(miau,X) :- gosta(miau,X), gato(X).


gosta(A,B) :- passaro(A),minhoca(B).
gosta(A,B) :- gato(A),peixe(B).
gosta(A,B) :- gato(A),passaro(B).

amigo(A,B) :- gosta(A,B),gosta(B,A).




