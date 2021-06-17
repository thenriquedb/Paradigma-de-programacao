/*
 * 3) Faça um código em PROLOG que tem uma base de conhecimentos representando o
 * estado atual de um tabuleiro do jogo da velha e diga se há vencedor (cruz
 * ou bola).
*/

 vencedor_linha(Tabuleiro, Jogador) :- Tabuleiro = [Jogador,Jogador,Jogador,_,_,_,_,_,_] .
 vencedor_linha(Tabuleiro, Jogador) :- Tabuleiro = [_,_,_,Jogador,Jogador,Jogador,_,_,_] .
 vencedor_linha(Tabuleiro, Jogador) :- Tabuleiro = [_,_,_,_,_,_,Jogador,Jogador,Jogador] .

vencedor_coluna(Tabuleiro,Jogador) :- Tabuleiro = [Jogador,_,_,Jogador,_,_,Jogador,_,_] .
vencedor_coluna(Tabuleiro,Jogador) :- Tabuleiro = [_,Jogador,_,_,Jogador,_,_,Jogador,_] .
vencedor_coluna(Tabuleiro,Jogador) :- Tabuleiro = [_,_,Jogador,_,_,Jogador,_,_,Jogador] .
  
vencedor_diagonal(Tabuleiro, Jogador) :- Tabuleiro = [Jogador,_,_,_,Jogador,_,_,_,Jogador] .
vencedor_diagonal(Tabuleiro, Jogador) :- Tabuleiro = [_,_,Jogador,_,Jogador,_,Jogador,_,_] .

vencedor(T,V) :- 
    vencedor_linha(T, V)  ;
    vencedor_coluna(T, V), ! ; 
    vencedor_diagonal(T, V) .