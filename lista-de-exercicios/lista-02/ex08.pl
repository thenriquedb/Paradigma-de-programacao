train(eins, um).
train(zwei, dois).
train(drei, tres).
train(vier, quatro).
train(fuenf, cinco).
train(sechs, seis).
train(sieben, sete).
train(acht, oito).
train(neun, nove).

lista_trains([], []).
lista_trains([H | T], [F | Port]) :- train(H, F), lista_trains(T, Port). 