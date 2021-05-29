/* 
 * 2) Crie uma regra que retorne “true” se duas listas tem a mesma quantidade de
 * elementos.
*/

tamanho([], Tam) :- Tam is 0.
tamanho([_ | Tail], Tam) :- tamanho(Tail, Tam_Aux) ,
   Tam is Tam_Aux + 1 .

mesmo_tamanho(L1, L2) :- 
  tamanho(L1, Length_L1), tamanho(L2, Length_L2) ,
  Length_L1 = Length_L2 .