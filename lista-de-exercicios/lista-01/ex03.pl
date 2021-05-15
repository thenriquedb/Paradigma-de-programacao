/*
 * 3) A base de conhecimento abaixo representa a área e população dos países.
 * %país(Nome, Área, População)
 * país(brasil, 9, 130).
 * país(china, 12, 1800).
 * país(eua, 9, 230).
 * país(índia, 3, 450).
 *
 * c) Faça consultas para responder as seguintes perguntas:
 * A área do Brasil é igual à área dos Estados Unidos?
 * A população dos Estados Unidos é maior que a população da Índia?
*/

%país(Nome, Área, População)
pais(brasil, 9, 130) .
pais(china, 12, 1800) .
pais(eua, 9, 230) .
pais(india, 3, 450) .

/*
* a) Faça uma consulta para determinar a densidade demográfica do Brasil
* (população divido pela área).
*/
densidade(Pais, Densidade) :- pais(Pais, Area, Populacao) , 
  Densidade is Populacao / Area .

    
/*
 * b) Faça outra consulta para determinar: "Qual a diferença entre a população
 * da China e da Índia?".
*/
diferenca_populacao(Pais1, Pais2, Diferenca) :- 
  pais(Pais1, _, Populacao1) ,
  pais(Pais2, _, Populacao2) ,
  (Diferenca is Populacao1 - Populacao2) .

% diferente_entre_china_e_india(china, india, D) .
% D = 1350

/*
  * c) Faça consultas para responder as seguintes perguntas:
  * A área do Brasil é igual à área dos Estados Unidos?
  * A população dos Estados Unidos é maior que a população da Índia?
*/

verificar_area(Pais1, Pais2) :- pais(Pais1, Area1, _) , 
  pais(Pais2, Area2, _) ,
  (
    (Area1 > Area2, write('Area do país 1 é maior que o segundo')) ;
    (Area1 =:= Area2, write('Areas são iguais')) ; 
    (Area1 =< Area2, write('Area do país 1 é menor que do pais 2')) ; 
    (Area2 =< Area1, write('Area do país 2 é menor que do pais 1')) 
  ) . 
  % verificar_area(brasil, eua)
  % Areas são iguais
  
