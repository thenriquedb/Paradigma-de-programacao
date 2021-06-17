 /*
 * 11) Dados os seguintes fatos que listam os últimos presidentes do Brasil:
 * presidente(sarney, 1985, 1990).
 * presidente( collor , 1990, 1992).
 * presidente(itamar, 1992, 1995).
 * presidente(fhc, 1995, 2003).
 * presidente( lula , 2003, 2011).
 * presidente(dilma,2012,2018).
 * a) Crie uma regra presidente_em(A, X) representando o fato que X era presidente
 * no ano A. Por exemplo, para os fatos acima, a seguinte consulta deve ser
 * possível:
 * ?- presidente em(1991, X).
 * X = collor ;
 * false .
*/

presidente(sarney, 1985, 1990).
presidente( collor , 1990, 1992).
presidente(itamar, 1992, 1995).
presidente(fhc, 1995, 2003).
presidente( lula , 2003, 2011).
presidente(dilma,2012,2018).

presidente_em(Ano, P) :- presidente(P,Inicio_Mandato, Fim_Mandato) , 
 Ano >= Inicio_Mandato , Ano =< Fim_Mandato
.