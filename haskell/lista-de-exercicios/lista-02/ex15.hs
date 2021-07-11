-- 15) Função para sequência: recebe dois números naturais n e m, e
-- retorna uma lista com n elementos, onde o primeiro é m, o segundo é m+1,
-- etc...
-- Ex.: sequencia 0 2 ==> []
-- sequencia 3 4 ==> [4,5,6]

sequencia :: (Num a, Enum a) => Int -> a -> [a]
sequencia n m = [x | x <- take n [m, m + 1 ..]]