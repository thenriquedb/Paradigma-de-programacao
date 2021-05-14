/*
 * Usando fatos, defina as relações pai e mãe. Em seguida, consulte o sistema
 * para ver se suas definições estão corretas.
*/

mae(ana, eva) .
mae(bia, rai) .
mae(bia, clo) .
mae(bia, ary) .
mae(eva, noe) .
mae(lia, gal) .

pai(ivo, eva) .
pai(gil, rai) .
pai(gil, clo) .
pai(gil, ary) .
pai(rai, noe) .
pai(ary, gal) .

/*
 * b) Acrescente ao programa os fatos necessários para definir as relações homem e
 * mulher. Por exemplo, para estabelecer que Ana é mulher e Ivo é homem,
 * acrescente os fatos mulher(ana) e homem(ivo).
*/
mulher(ana) .
mulher(eva) .
mulher(bia) .
mulher(clo) .
mulher(lia) .
mulher(gal) .

homem(ivo) .
homem(gil) .
homem(rai) .
homem(ary) .

/*
 * c) Usando duas regras, defina a relação gerou(X,Y) tal que X gerou Y se X é pai
 * ou mãe de Y. Faça consultas para verificar se sua definição está correta. Por
 * exemplo, para a consulta gerou(X,eva) o sistema deverá apresentar as
 * respostas X = ana e X = ivo. 
*/
gerou(Genitor, Pessoa) :- pai(Genitor,Pessoa) ; mae(Genitor,Pessoa) .

/*
 * d) Usando relações já existentes, crie regras para definir as relações filho,
 * filha, tio, tia, primo, prima, avô e avó. Para cada relação faça consultas
 * para verificar a corretude.
*/
filho(X,Y) :- X \== Y, gerou(X,Y) .

irmao(X,Y) :- X \== Y, (pai(Pai, X) , pai(Pai, Y)) , (mae(Mae, X) , mae(Mae, Y)) .

prole(X,Y) :- gerou(Y,X) .

tio(X,Y) :- prole(Y, Genitor) , irmao(Genitor, X) . % Rai é tio Gal

primo(X,Y) :- prole(X, Z) , prole(Y,W) , irmao(Z,W).

avo(X,Y) :- gerou(X,Z) , gerou(Z, Y) .
