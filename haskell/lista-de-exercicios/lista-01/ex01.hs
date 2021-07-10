-- 1) Crie uma função para verificar se uma letra é minúscula (Não use
-- funções do Prelude).
isLower :: Char -> Bool
isLower c = c >= 'a' && c <= 'z'
