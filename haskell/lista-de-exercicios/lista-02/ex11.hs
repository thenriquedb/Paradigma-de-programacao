-- 11) Defina as seguintes listas por compreensão:

-- a) [0,3,6,9,12,15]
multiplosTres :: [Integer]
multiplosTres = [x | x <- [0 .. 15], x `mod` 3 == 0]

-- b) Os múltiplos de 2 e 3 entre 0 e 20.
multiplosDoisETres :: [Integer]
multiplosDoisETres = [x | x <- [0 .. 20], even x && x `mod` 3 == 0]

-- c) [[1],[2],[3],[4],[5]]
listaDeListas :: [[Integer]]
listaDeListas = [[x] | x <- [1 .. 5]]

-- d) [[1], [1,1], [1,1,1], [1,1,1,1], [1,1,1,1,1]]
gerarListaDeUms :: (Eq t, Num t, Num a) => t -> [a]
gerarListaDeUms 0 = []
gerarListaDeUms n = 1 : gerarListaDeUms (n - 1)

listaDeN :: [[Integer]]
listaDeN = [gerarListaDeUms x | x <- [1 .. 5]]

-- e)[(1,3),(1,2),(1,1),(2,3),(2,2),(2,1),(3,3),(3,2),(3,1)].
listaDeTuplas :: [(Integer, Integer)]
listaDeTuplas = [(x, y) | x <- [1, 2, 3], y <- [3, 2, 1]]