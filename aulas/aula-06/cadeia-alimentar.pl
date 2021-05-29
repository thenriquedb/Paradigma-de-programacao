animal(urso) .
animal(peixe) .
animal(peixinho) .
animal(lince) .
animal(raposa) .
animal(coelho) .
animal(veado) .
animal(guaxinim) .

planta(alga) .
planta(grama) .

come(urso, peixe) .
come(lince, veado) .
come(urso, raposa) .
come(urso, veado) .
come(peixe, peixinho) .
come(peixe, alga) .
come(guaxinim, peixe) .
come(raposa, coelho) .
come(coelho, grama) .
come(veado, grama) .
come(guaxinim, grama) .

/* 
 *Descreva uma regra para determinar quais animais pertencem a cadeia alimentar 
 * de outro 
*/
pertence_cadeia(X, Y) :- animal(X), come(Y, X) .
pertence_cadeia(X, Y) :- come(Y, Z), pertence_cadeia(X, Z) .