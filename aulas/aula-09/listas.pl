/* Verificar se um item pertence a lista */
pertence(X, [H | T]) :- X = H . % Caso base
pertence_refactor(X, [X | _]) . % Caso base refatorado

% Busca recursiva
pertence(X, [_ | T]) :- pertence(X, T) .

% Um elemento é o ultimo elemento da lista
e_ultimo(X, [X]) .
e_ultimo(X, [_ | T]) :- e_ultimo(X, T) .

% Lista tem dois elementos consecutivos
sao_consecutivos(X,Y, [A,B | _]) :- X = A, Y=B . % ou
sao_consecutivos_refactor(X,Y, [X,Y | _]) .
sao_consecutivos(X, Y, [_ | T]) :- sao_consecutivos(X,Y,T) .
