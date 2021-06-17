% 3) Crie uma regra que retorne o último elemento de uma lista.
% ultimo(L,X)  :- last(L,X) .

ultimo(X, [X]) . 
ultimo(X, [_ | T]) :- ultimo(X, T)  . 

