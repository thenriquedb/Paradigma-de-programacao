-- 13) Considere o algoritmo a seguir que gera uma seqüência de números
-- naturais não nulos, a partir de um número natural n > 0. Se n for par,
-- divida-o por 2. Se n for ímpar, multiplique-o por 3 e some 1. Repita este
-- processo com o novo valor de n, até que ele seja igual a 1, se possível.
-- Por exemplo, para n = 22, a seqüência é: 22, 11, 34, 17, 52, 26, 13, 40,
-- 20, 10, 5, 16, 8, 4, 2 e 1. Para cada n, define-se o tamanho do ciclo de
-- n como a quantidade de números da seqüência gerada, incluindo o número 1.
-- No exemplo acima, o tamanho do ciclo para n = 22 é 16. Defina uma função
-- tamciclo(n) que dê como resultado o tamanho do ciclo de n.
-- algoritmo :: Num -> Num
-- algoritmo :: (Eq a, Num p, Fractional a, Integral a) => a -> p
-- calcular :: (Num a, Integral a) => a -> a

calcular :: (Integral a1, Num a2) => a1 -> a2 -> a2
calcular 1 c = c
calcular n c
  | n `mod` 2 == 0 = calcular (n `div` 2) (c + 1)
  | otherwise = calcular ((n * 3) + 1) (c + 1)

calcularV2 n = n
