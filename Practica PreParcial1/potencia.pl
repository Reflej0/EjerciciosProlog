multi(R, A, B):-R is A*B.
resta(R, A, B):-R is A-B.
potencia(R, _, B):-B=0, R is 1,!.
potencia(R, A, B):-B=1, R is A,!.
potencia(R, A, B):-B>1, resta(R1, B, 1),potencia(P1, A, R1), multi(R, A, P1),!.

%1024
%potencia(R, 2, 10).
%27
%potencia(R, 3, 3).
%1
%potencia(R, 5, 0).