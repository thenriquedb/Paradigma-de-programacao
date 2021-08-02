-- 7) Defina a função and_list :: [Bool] -> Bool que retorna a conjunção
-- da lista. Por exemplo, andList [e1; e2;...;en] = e1&&e2&&...&&en

and_list :: [Bool] -> Bool
and_list [] = True
and_list [False] = False
and_list (x : xs)
  | x && True = and_list (xs)
  | otherwise = and_list ([False])