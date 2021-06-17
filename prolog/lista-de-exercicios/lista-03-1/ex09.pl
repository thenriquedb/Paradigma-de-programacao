/*
* Imagine um mapa em um quadriculado de 4 x 4 posições, com cada posição
* tendo coordenadas (x, y). Crie os seguintes predicados:
*  existe_acima
*  existe_abaixo
*  existe_direita
*  existe_esquerda
* Cada predicado tem 2 parâmetros: uma coordenada x e uma coordenada y. Os
* predicados devem ter valor verdadeiro se existe uma posição no mapa na posição
* indicada (acima, abaixo, à direita ou à esquerda). Por exemplo, se a posição(1,
* 1) fica no canto inferior esquerdo do mapa, não existe nenhuma posição abaixo
* dela, mas existe uma posição acima. Daí os seguintes exemplos de consulta:
* ?- existe abaixo(1, 1).
* false .
* ?- existe acima(1, 1).
* true.
*/
existe_acima(1,0) :- true .
existe_acima(1,1) :- true .
existe_acima(1,2) :- true .
existe_acima(1,3) :- true .

% existe_acima(2,0) :- true .
% existe_acima(2,1) :- true .
% existe_acima(2,2) :- true .
% existe_acima(2,3) :- true .

% existe_acima(3,0) :- true .
% existe_acima(3,1) :- true .
% existe_acima(3,2) :- true .
% existe_acima(3,3) :- true .

existe_acima(X,Y)   :- validar_coordenadas(X,Y), X >= 1, X =< 3 .
existe_abaixo(X,Y)  :- validar_coordenadas(X,Y), X >= 0, X =< 2 .
existe_direita(X,Y) :- validar_coordenadas(X,Y), Y >= 0, Y < 3.
existe_esquerda(X,Y) :- validar_coordenadas(X,Y), X > 0, Y > 0 .

% Verifica se as cordenadas estão dentro do intervalo permitido
validar_coordenadas(X,Y) :- X >= 0, X < 4, Y >= 0, Y < 4 . 
