-- 9)Dados três comprimentos de lados, verifique se podem formar um
-- triângulo. Observações: O comprimento de um lado do triângulo é
-- sempre menor do que a soma dos outros dois. Retorne também o tipo
-- do triângulo:
-- Equilátero > Todos lados iguais
-- Isósceles > Dois lados iguais
-- Escaleno > Todos os lados diferentes

triangleIsValid :: (Eq a, Num a, Ord a) => a -> a -> a -> Bool
triangleIsValid a b c
  | a < (b + c) = True
  | b < (a + c) = True
  | c < (a + b) = True
  | otherwise = False

triangleVariant :: (Eq a, Num a, Ord a) => a -> a -> a -> String
triangleVariant a b c
  | (a == b) && (a == c) && (b == c) = "Equilateral"
  | a == b = "Isoceles"
  | a == c = "Isoceles"
  | b == c = "Isoceles"
  | otherwise = "Scalene"

triangleType :: (Eq a, Num a, Ord a) => a -> a -> a -> String
triangleType a b c
  | triangleIsValid a b c == False = "Invalído"
  | otherwise = triangleVariant a b c