/*
 * 5) Verifique se dois elementos são consecutivos. Dois elementos E1 e E2 são
 * consecutivos se eles forem o primeiro e o segundo elementos da lista ou, se
 * forem consecutivos na cauda da lista.
*/

sao_consecutivos_refactor(X,Y, [X,Y | _]) .
sao_consecutivos(X, Y, [_ | T]) :- sao_consecutivos(X,Y,T) .
