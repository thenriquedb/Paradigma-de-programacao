/*
* 2) Insira a seguinte base de conhecimento no Prolog e responda as questões a
* seguir.
*/

come(urso, peixe).
come(peixe, peixinho).
come(peixinho, alga).
come(peixe, alga).
come(urso, raposa).
come(veado, grama).
come(peixe, minhoca).
come(urso, guaxinim).
come(raposa, coelho).
come(urso, veado).
come(lince, veado).
come(planta_carnívora, mosca).
come(veado, planta_carnívora).
animal(urso).
animal(peixe).
animal(raposa).
animal(veado).
animal(minhoca).
animal(lince).
animal(coelho).
animal(guaxinim).
animal(mosca).
animal(peixinho).
planta(grama).
planta(alga).
planta(planta_carnívora).

/*
  a)Quais são os elementos que comem peixe?
    Consulta: come(X, peixe).
    Resposta:
        ?- come(X, peixe).
        X = urso.
*/

/*
    Quais são os elementos com propriedade animal?
    Consulta: animal(X).
    Resposta:
        ?- animal(X).
        X = urso ;
        X = peixe ;
        X = raposa ;
        X = veado ;
        X = minhoca ;
        X = lince ;
        X = coelho ;
        X = guaxinim ;
        X = mosca ;
        X = peixinho.
*/

/*
    Quais são todos os elementos que participam da relação come?
    Código da consulta: come(X, Y).
    Resposta:
        ?- come(X, Y).
        X = urso,
        Y = peixe ;
        X = peixe,
        Y = peixinho ;
        X = peixinho,
        Y = alga ;
        X = peixe,
        Y = alga ;
        X = urso,
        Y = raposa ;
        X = veado,
        Y = grama ;
        X = peixe,
        Y = minhoca ;
        X = urso,
        Y = guaxinim ;
        X = raposa,
        Y = coelho ;
        X = urso,
        Y = veado ;
        X = lince,
        Y = veado ;
        X = planta_carnívora,
        Y = mosca ;
        X = veado,
        Y = planta_carnívora.
*/

/*
d)reva as seguintes regras:
  carnívoro(X) = quem como animal
  herbívoro(X) = come planta e não come animal
  predador(X) = é carnívoro e também é animal
  presa(X) = é quem é comido por predador e também é animal
  caçado(X) = caçado é quem é presa
  pertence_a_cadeia(X,Y) =X pertence a cadeia alimentar de Y
*/

carnivoro(X) :- come(X, Y) , animal(Y).
herbivoro(X) :- planta(Y), come(X, Y), not(carnivoro(X)).
predador(X) :- carnivoro(X) , animal(X).
presa(X) :- predador(X) , come(X, Y), animal(Y).
cacado(X) :- true.

pertence_cadeia(X, Y) :- animal(X), come(Y, X) .
pertence_cadeia(X, Y) :- come(Y, Z), pertence_cadeia(X, Z) .

/*
* e) Faça as seguintes consultas
*   Peixe come peixinho e minhoca?
*     - True
*
*   Quais são as plantas?
*     ?- planta(P) .
*     P = grama ;
*     P = alga ;
*     P = planta_carnívora.
*
*   Quem é comido pelo urso?
*      ?- come(urso, C).
*      C = peixe ;
*      C = raposa ;
*      C = guaxinim ;
*      C = veado.
*
*   Quem come peixe?
*     ?- come(P,peixe) .
*     P = urso.
*
*   Quem é predador?
*   Quem é predador e também presa?
*   Quem é presa e herbívoro?
*
*   Quem pertence a cadeia alimentar do urso?
*     ?- pertence_cadeia(X, urso).
*     X = peixe ;
*     X = raposa ;
*     X = veado ;
*     X = guaxinim ;
*     X = minhoca ;
*     X = peixinho ;
*     X = coelho ;
*     X = mosca ;

*   Quem pertence a cadeia alimentar do urso e ao mesmo tempo come planta?
*
*   A minhoca pertence a cadeia alimentar de quem?
*      ?- pertence_cadeia(minhoca, X).
*      X = peixe ;
*      X = urso ;
*/
