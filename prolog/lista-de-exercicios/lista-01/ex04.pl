/*
 * Crie uma base de conhecimento que represente essa tabela.
 * a) Consulte o sistema para recuperar os dependentes de Ivo
 * b) Crie consultas para descobrir de quem Ary é dependente
 * c) Crie regras para descobrir quem depende de funcionário com salário inferior a
 * R$ 950,00
 * d) Consulte o sistema para encontrar funcionários que não têm dependentes
 * (talvez você precise do operador de negação: not)
*/
funcionario(1, ana, 1000) .
funcionario(2, bia, 1200) .
funcionario(3, ivo, 903) .

depedente(1, ary) .
depedente(3, rai) .
depedente(3, eva) .

/* a) Consulte o sistema para recuperar os dependentes de Ivo 
    ?- depedente(3, D).
    D = rai ;
    D = eva.
*/

/* b) Crie consultas para descobrir de quem Ary é dependente */
depende(Dependente, CodFuncionario, Nome) :- depedente(CodFuncionario, Dependente) , 
  funcionario(CodFuncionario, Nome, _).

  % ?- depende(ary, D, Nome).
  % D = 1,
  % Nome = ana.

/*
 * c) Crie regras para descobrir quem depende de funcionário com salário inferior a
 * R$ 950,00
*/
depende_salario_inferior(Dependente) :- funcionario(Codigo, _, Salario) ,
  Salario < 950 ,
  depedente(Codigo, Dependente) .

/*
 * d) Consulte o sistema para encontrar funcionários que não têm dependentes
 * (talvez você precise do operador de negação: not)
*/
% \+
sem_dependentes(NomeFunc)  :- 
  funcionario(CodFuncionario, NomeFunc, _) , 
  not( depende(_, CodFuncionario, NomeFunc) ) . 
% ?- sem_dependentes(N).
% N = bia ;