%clauses
parcial1(ana,7).
parcial1(juan,4).
parcial1(camila, 8).
parcial1(rodrigo, 7).
parcial1(matias, 5).
%parcial1(rodolfo, 10).
parcial2(ana,9).
%parcial2(juan,8).
parcial2(camila, 8).
parcial2(rodrigo, 6).
parcial2(matias, 10).
parcial2(rodolfo, 2).
%finclauses

multiplicar(P,X,Y):-P is X*Y.
sumar(S,X,Y):-S is X+Y.
menor(X,Y):-X<Y.
mayor(X,Y):-X>Y.
promedio(P, X, Y):-P is (X+Y)/2.
promocionados(N, NF):-parcial1(N, T),parcial2(N, W),mayor(T, 6),mayor(W, 6),promedio(NF, T, W).
aprobados(N):-parcial1(N, T),parcial2(N, W),mayor(T, 3),mayor(W, 3),(menor(T, 7);menor(W, 7)).
recursantes(N):-parcial1(N, T),parcial2(N, W),(menor(T, 4);menor(W, 4)).
%https://stackoverflow.com/questions/22469584/store-result-as-a-list-using-prolog
mejor_promedio(MP):-findall(Y, promocionados(_, Y), Lista),maxValue(Lista, MP).
alumnos_mejor_promedio(N, MP):-promocionados(N, Y),mejor_promedio(MP),MP==Y.
%https://stackoverflow.com/questions/27455034/find-max-integer-in-a-list-in-prolog
maxValue([H|T], Y):-
    maxValue(T,X),
    (H > X ->
     H = Y;
     Y = X).
maxValue([X],X).
alumnos_ambos_parciales(N):-parcial1(N, _),parcial2(N,_).
todos_alumnos(N):-parcial1(N, _);parcial2(N,_).
alumnos_ausentes(N):-
    findall(T, todos_alumnos(T), Todos),
    findall(U, alumnos_ambos_parciales(U), Ambos),
    subtract(Todos,Ambos, N).