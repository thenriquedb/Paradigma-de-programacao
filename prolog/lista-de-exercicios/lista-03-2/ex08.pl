/*
 * Crie uma regra que retorne o e-nésimo elemento de uma lista. Lembre-se o
 * primeiro elemento de uma lista é a cabeça da lista e o e-nésimo elemento de uma
 * lista é o (n-1)-ésimo elemento da cauda.
*/

enesimo([H], 0, H) .  
enesimo([_ | T], N, V) :- N_Aux is N - 1,
    enesimo(T, N_Aux,H)
  .