/*
 * 2) Verificar se duas listas, uma com a's e outra com b's tem o mesmo número
 * de elementos.
*/

% Verifica se duas listas tem o mesmo comprimento
mesmo_tamanho(L1, L2) :- 
  length(L1, Length_L1), length(L2, Length_L2) ,
  Length_L1 = Length_L2 .

% Verificar se duas listas são compostas com a's e outra com b's
validar_elementos(L1,L2) :- 
  (elementos_iguais(L1, a) , elementos_iguais(L2, b)),! ;  
  (elementos_iguais(L2, a) , elementos_iguais(L1, b)) .




% Verifica se todos os items de um listas são iguais a determinado elemento
elementos_iguais([X], Elemento) :- X == Elemento .
elementos_iguais([X,Y], Elemento) :- X == Elemento, Y == Elemento.
elementos_iguais([H | T], Elemento) :- H == Elemento, elementos_iguais(T, Elemento) .

/*
 * Á verificação se todos os elementos da lista são iguais poderia ser escrtia  
 * seguinte forma
 * Reference: https://stackoverflow.com/a/54833515/9525489
*/
elementos_iguais_v2(L,Elemento) :- sort(L, [Elemento]) .

/*
 * Duas listas, uma com a's e outra com b's tem o mesmo número de elementos.
*/
todos_a_e_todos_b(L1, L2) :- validar_elementos(L1, L2) , mesmo_tamanho(L1, L2).