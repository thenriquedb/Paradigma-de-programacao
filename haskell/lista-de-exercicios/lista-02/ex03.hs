-- 3) Crie uma função que receba uma lista de inteiros com tamanho maior
-- que três e retorne a soma dos três primeiros elementos.
somaTresPrimeiros :: Num a => [a] -> a
somaTresPrimeiros xs = sum (take 3 xs)

somaTresPrimeirosRecursiva :: (Eq t, Num t, Num p) => [p] -> t -> p
somaTresPrimeirosRecursiva _ 3 = 0
somaTresPrimeirosRecursiva xs n = head xs + (somaTresPrimeirosRecursiva (tail xs) (n + 1))