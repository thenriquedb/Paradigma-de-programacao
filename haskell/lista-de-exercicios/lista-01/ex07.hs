-- 7) Crie uma função comDesconto :: Float -> Float que, dado o valor de
-- uma mercadoria, calcule o valor com desconto segundo as regras
-- abaixo:
-- -Valor < 50.0, desconto de 0%
-- -Valor >=50.0 e < 100.0 , desconto de 5%
-- -Valor >= 100.0 e < 300.0 , desconto de 10%
-- -Valor >= 300.0, desconto de 15%

calcularDesconto v d = v - (v * (d / 100))

comDesconto :: Float -> Float
comDesconto v
  | v < 50 = v
  | v >= 50 && v < 100 = calcularDesconto v 5
  | v >= 100 && v < 300 = calcularDesconto v 10
  | otherwise = calcularDesconto v 15