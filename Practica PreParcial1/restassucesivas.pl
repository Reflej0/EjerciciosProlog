infinito(i, infinito).
indeterminacion(i, indeterminacion).
resta(R, A, B):-R is A-B.
cociente(R, 0, 0):-indeterminacion(i, R),!.
cociente(R, _, 0):-infinito(i,R),!.
cociente(R, 0, _):-R is 0,!.
cociente(R, A, B):-A<B, R is 0,!.
cociente(R, A, B):-A=B, R is 1,!.
cociente(R, A, B):-B>0,A>B, resta(R1, A, B), cociente(R2, R1, B), R is R2+1,!.