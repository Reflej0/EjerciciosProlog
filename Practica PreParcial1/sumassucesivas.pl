%sumasSucesivas(_,0,0):-!.
%sumasSucesivas(X,S,R):- S>0,S1 is S-1,sumasSucesivas(X,S1,R1),R is R1+X.
%Mi resolucion.
resta(R, A, B):-R is A-B.
multi(R, 0, _):-R is 0,!.
multi(R, _, 0):-R is 0,!.
multi(R, A, B):-A>0, resta(R1, A, 1), multi(R2, R1, B), R is R2+B,!.
multi(R, 1, B):-R is B,!.