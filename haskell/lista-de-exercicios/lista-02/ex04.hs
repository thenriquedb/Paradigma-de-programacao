-- 4) Crie uma função recursiva para verificar se um determinado elemento
-- pertence a uma lista.
-- pertence :: t -> ([a] -> [a]) -> [t] -> Bool
-- pertence _ [] = False
-- pertence n xs
--   | n == head xs = True
--   | otherwise = pertence n tail xs

check :: Eq t => t -> [t] -> Bool
check n [] = False
check n (x : xs)
  | x == n = True
  | otherwise = check n xs