aluno(joao, calculo) .
aluno(maria, calculo) .
aluno(joel, programacao) .
aluno(joao, estrutura) .

frequenta(joao, puc) .
frequenta(maria, puc) .
frequenta(joel, ufrj) .

professor(carlos, calculo) .
professor(ana_paula, estrutura) .
professor(pedro, programacao) .

funcionario(pedro, ufrj) .
funcionario(ana_paula, puc) .
funcionario(carlos, puc) .

% Quem são os alunos do professor X?
sao_alunos_do_professor(A, X) :- professor(X, Materias), aluno(A,Materias) .

% Quais são as pessoas pessoas que estão associadas a uma universidade X? (Alunos e professores)
alunos_associados(Aluno, Universidade) :- frequenta(Aluno, Universidade).
professores_associados(Pessoa, Universidade) :- funcionario(Pessoa, Universidade).

associados(Pessoa, Universidade) :- alunos_associados(Pessoa, Universidade) ; 
  professores_associados(Pessoa, Universidade) .