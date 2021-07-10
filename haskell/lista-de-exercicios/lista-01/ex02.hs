-- 2) Crie uma função para retornar o valor absoluto.
absValue :: Int -> Int
absValue v
  | v > 0 = v
  | otherwise = v * (-1)