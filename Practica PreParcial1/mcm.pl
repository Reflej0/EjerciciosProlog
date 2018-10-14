residuo(R, A, B):-T1 is integer(A/B), R is abs(A-(T1*B)).
divv(R, A, B):-R is integer(A/B).
mcd(R, A, B):-B=0, R is A.
mcd(R, A, B):-B>0, residuo(RE, A, B), mcd(R, B, RE),!.
mcm(R, A, B):-(A=0; B=0), R=0,!.
mcm(R, A, B):-mcd(R1, A, B), divv(R2, A, R1), R is R2*B.