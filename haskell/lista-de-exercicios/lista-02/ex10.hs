{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

-- 10) Crie uma função recursiva que recebe uma lista de inteiros e
-- retorna o maior elemento.

myMaximum :: Ord a => [a] -> a
myMaximum [x] = x
myMaximum (x : xs)
  | (myMaximum xs) > x = myMaximum xs
  | otherwise = x