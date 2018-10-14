multi(R, A, B):-R is A*B.
resta(R, A, B):-R is A-B.

factorial(R,N):-N=0, R is 1,!.
factorial(R,N):-N>=1,resta(R1, N, 1),factorial(F1, R1),multi(R,N,F1).