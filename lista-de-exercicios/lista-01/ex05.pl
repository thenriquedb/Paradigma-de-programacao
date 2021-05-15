/* 5) O programa a seguir associa a cada pessoa seu esporte preferido.
 * joga(ana,volei).
 * joga(bia,tenis).
 * joga(ivo,basquete).
 * joga(eva,volei).
 * joga(leo,tenis).
 * Suponha que desejamos consultar esse programa para encontrar um parceiro P para
 * jogar com leo. Como seria a consulta? 
*/

joga(ana, volei) .
joga(bia, tenis) .
joga(ivo, basquete) .
joga(eva, volei) .
joga(leo, tenis) .

encontrar_parceiro(Pessoa1, Pessoa2, Esporte) :- joga(Pessoa2 , Esporte) , 
  Pessoa1 \= Pessoa2.