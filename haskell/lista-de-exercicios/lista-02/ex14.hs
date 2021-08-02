-- 14) Defina a função tabuada :: Int -> [(Int, Int, Int)] que dado um
-- inteiro n produz uma lista da tabuada dos n números inteiros.
tabuada :: Int -> [(Int, Int, Int)]
tabuada n = f n 10
  where
    f x 0 = [(x, 0, x)]
    f x l = (x, l, x + l) : f x (l -1)