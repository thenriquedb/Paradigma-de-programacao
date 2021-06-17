/*
 * 1) Dois termos unificam se eles são o mesmo termo, ou se eles contêm
 * variáveis que podem ser uniformemente instanciados com termos de tal
 * maneira que os termos resultantes são iguais. Exemplo: mia e mia unificam
 * porque são o mesmo átomo. 42 e 42 unificam porque são os mesmos números.
 * os termos X e X unificam porque são as mesmas variáveis. Da mesma forma,
 * woman(mia) e woman(mia) unificam porque são a mesma estrutura complexa.
 * Verifique se as consultas abaixo unficam:
 * ?- =(mia,mia). FALSE
 * ?- =(mia,vincent).FALSE
 * ?- mia = mia. TRUE
 * ?- 2 = 2. TRUE
 * ?- mia = vincent. FALSE
 * ?- ’mia’ = mia. TRUE
 * ?- ’2’ = 2 FALSE
 * ?- mia = X. FALSE
 * ?- X = mia, X = vincent. FALSE
 * ?- k(s(g),Y) = k(X,t(k)).
 * ?- k(s(g), t(k)) = k(X,t(Y)).
 * ?- loves(X,X) = loves(marcellus,mia). FALSE
 * ?- [Head|Tail] = [mia, vincent, jules, yolanda].
 * ?- [X,Y | W] = [[], dead(z), [2, [b, c]], [], Z]. TRUE
 * ?- [_,X,_,Y|_] = [[], dead(z), [2, [b, c]], [], Z].
*/