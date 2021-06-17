% Exemplo da aula 02
genitor(pam, bob) .
genitor(tom, bob) .
genitor(liz, bob) .
genitor(bob, ann) .
genitor(bob, pat) .
genitor(pat, jim) .

% descedente(X,Y) :- genitor(Y,X) , genitor(Z,X) .
% descedente(X,Y) :- genitor(Y,X) , genitor(Z,X) , genitor(W,Z) .

descedente(X,Y) :- genitor(Y,X) .
descedente(X,Y) :- genitor(Y, W) , descedente(X, W) . % W vai chegar em X?
