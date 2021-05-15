% Fatos
mulher(pam) .
mulher(liz) .
mulher(ann) .
mulher(pat) .

homem(tom) .
homem(bob) .
homem(jim) .

genitor(pam, bob) .
genitor(tom, bob) .
genitor(liz, bob) .
genitor(bob, ann) .
genitor(bob, pat) .
genitor(pat, jim) .


% X é filho de Y se Y gerou X
prole(X,Y) :- genitor(Y,X) .

% X é mãe deY se X gerou Y e X é mulher
mae(X,Y) :- genitor(X,Y), mulher(X) . 

%  Ana é avo de noe se ana gerou eva ou ana gerou rai                                   
avos(X, Z) :- genitor(X,Y),genitor(Y,Z) .