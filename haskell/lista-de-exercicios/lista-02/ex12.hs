-- 12) Defina uma função que dada uma lista de inteiros, retorna o número
-- de elementos de valor superior a um número n qualquer.
-- >retornaSup 4 [3,2,5,6]
-- 2.

elementosSuperioresRecursiva :: Ord a => a -> [a] -> [a]
elementosSuperioresRecursiva n [] = []
elementosSuperioresRecursiva n (x : xs)
  | x > n = x : elementosSuperioresRecursiva n xs
  | otherwise = elementosSuperioresRecursiva n xs

elementosSuperiores :: Ord a => a -> [a] -> [a]
elementosSuperiores n xs = filter (> n) xs