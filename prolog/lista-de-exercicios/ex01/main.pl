/*
* Sexo de cada pessoa
*/
female(ana) .
mother(ana, eva) .
female(eva) .

female(bia) .
mother(bia, rai) .

female(clo) .
female(lia) .
female(gal) .

male(ivo) .
father(ivo, eva) .

male(rai) .
male(noe) .
male(gil) .
father(gil, rai) .

male(ary) .


/*
* Paternidade de cada pessoa
*/



% mother(bia, clo) .
% mother(bia, ary) .
% father(gil, rai) .
% father(gil, clo) .
% father(gil, ary) .

% mother(eva, noe) .
% father(rai, noe) .

% mother(lia, gai) .
% father(ary, gai) .