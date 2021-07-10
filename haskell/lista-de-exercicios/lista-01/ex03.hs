-- 3) Crie uma função que recebe um número e retorne seu antecessor se
-- for maior que zero.
predecessor :: Int -> Int
predecessor v
  | v > 0 = v -1
  | otherwise = v