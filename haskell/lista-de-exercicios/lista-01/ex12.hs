-- 12) Dado um número natural n > 0, n é dito perfeito se a soma de seus
-- divisores, incluindo o número 1, é igual ao próprio n. O primeiro número
-- natural perfeito é o número 6, porque 6=1+2+3. Defina uma função
-- eperfeito(n) que informe se n é, ou não, um número perfeito. Outros
-- números perfeitos: 28, 496 e 8.128.

divisorValido :: Integral a => a -> a -> Bool
divisorValido a b = a `mod` b == 0

listaDivisores :: Int -> [Int]
listaDivisores n = [x | x <- [1 .. n -1], divisorValido n x]

numeroPerfeito :: Int -> Bool
numeroPerfeito n = sum (listaDivisores n) == n