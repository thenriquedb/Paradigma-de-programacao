-- 14) Dados dois números naturais, x e y, ambos maiores que zero, defina
-- uma função mdc(x,y) que dê como resultado o máximo divisor comum entre x
-- e y.
mdc :: Int -> Int -> Int
mdc a 0 = a
mdc a b = mdc b (a `mod` b)