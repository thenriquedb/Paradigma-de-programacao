-- 11) Crie uma função para calcular a expressão 3 * 5, usando uma
-- definição recursiva.
multRecursiva :: (Eq a, Num a, Num b) => b -> a -> b
multRecursiva a 1 = a
multRecursiva a b = a + multRecursiva a (b - 1)