-- 10) Dado um valor monetário em Reais, faça um programa que devolve uma
-- tupla-3 contendo o valor em Real, e sua conversão para Euro (1Real =
-- 0.448Euro) e Dólar (1R =0.547USD), como no exemplo abaixo:
-- > valorRealConvertido 500.8
-- ((500.8,"Real"),(224.3584,"Euro"),(273.9376,"Dolar"))

-- realParaDolar :: Num ->
realParaDolar :: Float -> Float
realParaDolar v = v * 0.547

realParaEuro :: Float -> Float
realParaEuro v = v * 0.448

criaTupla :: a -> b -> (a, b)
criaTupla a b = (a, b)

type ValorConvertido = (Float, String)

valorRealConvertido :: Float -> (ValorConvertido, ValorConvertido)
valorRealConvertido v =
  criaTupla
    (criaTupla (realParaDolar v) "Dolar")
    (criaTupla (realParaEuro v) "Euro")
