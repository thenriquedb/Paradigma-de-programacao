-- Crie uma função recursiva que insere um elemento na última posição
-- de uma lista caso ele não exista.
-- exists x xs =
-- exists x [] = False

onlyOne :: Eq a => a -> [a] -> Bool
onlyOne x xs = length (filter (== x) xs) < 1

addEnd :: Eq a => a -> [a] -> [a]
addEnd x xs
  | onlyOne x xs && True = xs ++ [x]
  | otherwise = xs