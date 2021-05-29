% 7) Crie uma regra para somar os elementos de uma lista
somar_lista([], Sum) :- Sum is 0 .
somar_lista([H | Tail], Sum) :- somar_lista(Tail, Sum_Aux) , 
    Sum is Sum_Aux + H .