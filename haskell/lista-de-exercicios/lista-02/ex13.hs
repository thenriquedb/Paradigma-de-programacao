-- Faça uma função que recebe duas listas e faça a interseção delas.
-- Obs: a interseção não tem repetição de elementos.
intersect :: (Foldable t, Eq a) => t a -> [a] -> [a]
intersect xs ys = [y | y <- ys, (elem y xs)]