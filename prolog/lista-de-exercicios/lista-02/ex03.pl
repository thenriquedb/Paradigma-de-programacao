/*
 3) Como que o Prolog responde a essas consultas:
 1. [a,b,c,d] = [a,[b,c,d]].FALSE
 2. [a,b,c,d] = [a|[b,c,d]].TRUE
 3. [a,b,c,d] = [a,b,[c,d]].FALSE
 4. [a,b,c,d] = [a,b|[c,d]].TRUE
 5. [a,b,c,d] = [a,b,c,[d]].FALSE
 6. [a,b,c,d] = [a,b,c|[d]].TRUE
 7. [a,b,c,d] = [a,b,c,d,[]].FALSE
 8. [a,b,c,d] = [a,b,c,d|[]].FALSE
 9. [] = [_|[]].TRUE
 10. [] = [_].FALSE
 11. [] = _. TRUE
*/

