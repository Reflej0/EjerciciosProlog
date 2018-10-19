restar(R, A, B):-R is A-B.
sumar(R, A, B):-R is A+B.
mult(R, A, B):-R is A*B.
inf(i, infinito).
ind(i, indeterminacion).
divs(R,0,0,_):-ind(i,R),!.
divs(R,_,0,_):-inf(i,R),!.
divs(R,A,B, RES):-A<B, R is 0, RES is (B-A),!.
divs(R,A,B, RES):-A=B, R is 1, RES is 0,!.
divs(R,A,B, RES):-A>B, restar(RE,A,B),divs(R2,RE,B, _),sumar(R,R2,1), restar(RES, A, R*B).