/*
 * Escreva uma regra com o predicado troca12(Lista1, Lista2) o qual checa se
 * a lista é idêntica, exceto pelo fato que os dois primeiros elementos devem
 * estar trocados. Exemplo verdadeiro: Lista1 = [a,b,c,d,e,b] e Lista2 =
 * [b,a,c,d,e,b]
*/
identica([],[]) .
identica([H1 | T1], [H2 | T2]) :- H1 = H2, identica(T1, T2) . 

troca12([P1, S1 | T1], [P2, S2 | T2]) :- P1 = S2, P2 = S1, identica(T1, T2) .