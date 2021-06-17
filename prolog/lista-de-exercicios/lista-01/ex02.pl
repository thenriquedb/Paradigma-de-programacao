/*
 * 2) Codifique as regras equivalentes às seguintes sentenças:
 * a) Todo mundo que tem filhos é feliz.
 * b) Um casal é formado por duas pessoas que têm filhos em comum.
*/

/* a) Todo mundo que tem filhos é feliz. */
pai(carlos, maria) .
pai(joao, ricardo) .

mae(ana, maria) .
mae(bia, ricardo) .

gerou(X, Y) :- pai(X,Y) ; mae(X,Y) .
possui_filhos(X) :- gerou(X, _Filho) .
e_feliz(X) :- possui_filhos(X).

/*b) Um casal é formado por duas pessoas que têm filhos em comum.*/
casal(X,Y) :- gerou(X, Filhos) , gerou(Y, Filhos) .