-- 6) Crie uma função recursiva que recebe uma lista de inteiros e
-- retorna uma lista com o dobro de cada elemento da primeira lista.

dobro xs = [x * 2 | x <- xs]