-- 1) Faça uma função que calcule a distância entre dois pontos.
absoluto :: Float -> Float
absoluto x = if x > 0 then x else - x

distancia_AB :: Float -> Float -> Float -> Float -> Float
distancia_AB x1 y1 x2 y2
  | x1 == x2 = absoluto (y2 - y1)
  | y1 == y2 = absoluto (x1 - x2)
  | otherwise = sqrt ((x2) - (x1) ^ 2 + (y2 - y1) ^ 2)

-- 2) Verifique se o ano informado é bissexto ou não.
bissexto :: Int -> Bool
bissexto x
  | mod x 400 == 0 = True
  | (mod x 4 == 0) && (mod x 100 /= 0) = True
  | otherwise = False

-- 3) Defina uma função que recebe três números inteiros representando um dia, um mês
-- e um ano. Vefica se os números forma uma data valida