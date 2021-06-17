estados(mg, 'Belo Horizonte') .
estados(sp, 'São Paulo') .
estados(rj, 'Rio de Janeiro') .
estados(es, 'Vitória') .

capital(Estado,Capital) :- estados(Estado, Capital) .