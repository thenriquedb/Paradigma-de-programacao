/*
 * 1) Crie uma base de conhecimento com os fatos abaixo.
 * italiana(pizza).
 * italiana(calzone).
 * italiana(lazanha).
 * mineira(tutu).
 * mineira(feijoada).
 * gaucha(churrascada).
 * uruguaia(churrascada).
 * argentina(churrascada).
 * paraguaia(churrascada).
 * a) Crie uma regra com nome "brasileira" para dizer se o prato é típico
 * brasileiro. Para ser um prato típico ele deve ser da culinária mineira ou
 * gaúcha.
 * b) Consulte se lasanha é italiana True
 * c) Consulte se tutu é comida brasileira True
 * d) Consulte se existe comidas brasileiras True
 * e) Consulte se há uma comida que seja brasileira e uruguaia. False
*/

italiana(pizza).
italiana(calzone).
italiana(lazanha).
mineira(tutu).
mineira(feijoada).
gaucha(churrascada).
uruguaia(churrascada).
argentina(churrascada).
paraguaia(churrascada).

/* a) Crie uma regra com nome "brasileira" para dizer se o prato é típico
* brasileiro. Para ser um prato típico ele deve ser da culinária mineira ou
* gaúcha. */
brasileira(C) :- mineira(C), ! ; gaucha(C) .