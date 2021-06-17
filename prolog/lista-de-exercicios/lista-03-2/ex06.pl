% 6) Crie uma regra para saber o tamanho (qtde de elementos) de uma lista
tamanho([], Tam) :- Tam is 0.
tamanho([_ | Tail], Tam) :- tamanho(Tail, Tam_Aux) ,
   Tam is Tam_Aux + 1 .
