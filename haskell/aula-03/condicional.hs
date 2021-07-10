{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

abs :: Float -> Float
abs x = if x > 0 then x else - x

sinal :: Int -> Int
sinal x =
  if (x > 0)
    then 1
    else
      if (x == 0)
        then 0
        else -1

-- Guards
sinal_v2 :: Int -> Int
sinal_v2 x
  | x > 0 = 1
  | x == 0 = 0
  | otherwise = -1

-- multiplas equaçoes
ou :: Bool -> Bool -> Bool
ou False False = False
ou True False = True
ou False True = True
ou True True = False

-- Casamento de padrão (variavel anonima)
ou_v2 :: Bool -> Bool -> Bool
ou_v2 False False = False
ou_v2 _ _ = True