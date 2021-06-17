soma(A,B,S) :- S is A + B .

% Leia um número e imprima se o número é maior, menor ou igual a 100
% maior_que_cem(V) .
verificar_numero() :- write('Entre com um número: '),
  read(Value),
  (
    (Value > 100, write('O número é maior que 100')) ;
    (Value =< 100, write('O número é menor ou igual a 100')) 
  ) . 

/* 
 * 
*/
nota(joao, 5.0) .
nota(mariana, 9.0) .
nota(joaquim, 4.5) .
nota(maria, 6.0) .
nota(cleuza, 8.5) .
nota(mara, 2.5) .
nota(joana, 6.5) .
nota(mary, 10.0) .

diario(Aluno) :- nota(Aluno, Nota) ,
    (
      (Nota >= 7,  Nota =< 10, write('Aluno Aprovado')) ;
      (Nota >= 5,  Nota < 6.9 , write('Aluno em recuperação')) ;
      (Nota >= 0,  Nota < 4.9, write('Aluno em recuperação')) 
    ) .