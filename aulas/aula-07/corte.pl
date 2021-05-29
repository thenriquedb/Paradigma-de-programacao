/* CORTE: Controla o retrocesso (backtracking) automático quando uma condição é 
* satisfeita
* 
* O controle é feito pelo caractere especial ! 
*/
distancia(c,g,5) .

chegar(O,D,F) :- distancia(O,D,X), F is X .
chegar(O,D,F) :- distancia(O,Aux,X1), chegar(Aux, D, X2), F is X1 + X2 .

% Primeira solução
f(X, 0) :- X < 3, !. % Corte
f(X, 2) :- 3 =< X, X < 6, ! .
f(X, 4) :- 6 =< X .

