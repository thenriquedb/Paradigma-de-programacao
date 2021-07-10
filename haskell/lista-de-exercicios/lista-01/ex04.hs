-- 4) Crie três versões de uma mesma função que ao receber três valores x
-- y z, retorne 10 se x for 7 retornar 20 se y for 8 e retornar 30 se
-- z for 9. Em uma versão utilize padrões de função, outra deve ter
-- variáveis anônimas e a última, comando de guarda ou condicional.

validate :: Int -> Int -> Int -> Int
validate 7 _ _ = 10
validate _ 8 _ = 20
validate _ _ 9 = 30
validate _ _ _ = 0

validateWithGuards :: Int -> Int -> Int -> Int
validateWithGuards x y z
  | x == 7 = 10
  | y == 8 = 20
  | z == 9 = 30
  | otherwise = 0

validateWithConditional :: Int -> Int -> Int -> Int
validateWithConditional x y z =
  if (x == 7)
    then 10
    else
      if (y == 8)
        then 20
        else
          if (z == 9)
            then 30
            else 0
