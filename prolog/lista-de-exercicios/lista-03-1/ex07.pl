/**
 * Implementar um programa que determina se um determinado dia faz parteum dia da semana ou final de semana. Note que a determinação de uma
 * categoria já exclui a possibilidade de que o elemento pertença a outra
 * categoria, ou seja, não existe um dia que seja semana e final de semana.
 * Assim, você pode usar o comando de corte.
*/

dia_de_semana(segunda) .
dia_de_semana(terca) .
dia_de_semana(quarta) .
dia_de_semana(quinta) .
dia_de_semana(sexta) .
fim_de_semana(sabado) .
fim_de_semana(domingo) .

verificar(Dia) :- not(validar(Dia)) -> false;
                  dia_de_semana(Dia) -> write("É dia de semana") ;
                  write("É Fim de semana") . 

validar(Dia) :- dia_de_semana(Dia) ; fim_de_semana(Dia) .