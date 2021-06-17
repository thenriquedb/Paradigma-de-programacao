-- Where define um escopo para a funcão
a = b + c
  where
    b = 1
    c = 1

--------------------------
-- let define um escopo para a funcão
a1 =
  let b = 1
      c = 2
   in b + c

multiplica x y = x * y

subtracao x y = x - y

-- Formula de Heron
calculoArea a b c =
  let s = (a + b + c) / 2
   in sqrt
        ( multiplica
            s
            ( multiplica
                ( multiplica
                    (subtracao s a)
                    (subtracao s b)
                )
                (subtracao s c)
            )
        )

calculoAreaComWhere a b c =
  sqrt
    ( multiplica
        s
        ( multiplica
            ( multiplica
                (subtracao s a)
                (subtracao s b)
            )
            (subtracao s c)
        )
    )
  where
    s = (a + b + c) / 2