/*
* 2) Crie uma base de conhecimento com os seguintes quaternários. Os fatos
* representam dados dos alunos, disciplina, nota e frequência.
* nota_freq(alberto, logica, 9.0, 60.0).
* nota_freq(juca, logica, 7.0, 95.0).
* nota_freq(maria, logica, 4.0, 75.0).
*/

nota_freq(alberto, logica, 9.0, 60.0) .
nota_freq(juca, logica, 7.0, 95.0) .
nota_freq(maria, logica, 4.0, 75.0) .


/*
* a) Faça uma consulta à base de conhecimento para retorna apenas o nome e a nota dos alunos.
* Dica: O underscore (variável anônima) faz com que o PROLOG ignore os argumentos.
*/
resumo(Nome,Nota) :- nota_freq(Nome, _, Nota, _) .

/*
* b) Crie um regra com a conclusão no formato "aprovado(X, Y, Z, W)". Ela é
* responsável por informar se o aluno está aprovado considerando que a nota seja
* maior ou igual a 7 e a frequência maior ou igual a 75.
*/
aprovado_por_nota(Nota) :- Nota >= 7.
aprovado_por_frequencia(Frequencia) :- Frequencia >= 75.

aprovado(Aluno, Disciplina, Nota, Frequencia) :- 
        nota_freq(Aluno, Disciplina, Nota, Frequencia),
        aprovado_por_nota(Nota), 
        aprovado_por_frequencia(Frequencia) .

% c) Consulte pelos aprovados em qualquer disciplina.
aprovados_em_qualquer_disciplina(Aluno, Disciplina, Nota, Frequencia) :- 
        aprovado(Aluno, Disciplina, Nota, Frequencia) .

%  d) Consulte pelos aprovados em logica 
aprovados_em_logica(Aluno, Nota) :- 
        nota_freq(Aluno, logica, Nota, Frequencia),
        aprovado(Aluno, logica, Nota, Frequencia).

/* 
* e) Incluindo uma regra que permita determinar os alunos reprovados em qualquer
* disciplina.
*/
reprovado(Aluno, Disciplina, Nota, Frequencia) :- 
        not(aprovado(Aluno, Disciplina, Nota, Frequencia)) .
