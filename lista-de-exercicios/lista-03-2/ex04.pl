% 4) Crie uma regra para ver se um elemento pertence a lista

pertence(X, [X | T]) . % Caso base
pertence(X, [_ | T]) :- pertence(X, T) .
