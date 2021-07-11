-- 8) Faça uma função recursiva para calcular a potência de dois. Por
-- exemplo, potDois 3 significa 2**3.
potDois 0 = 1
potDois n = 2 * potDois (n - 1)
