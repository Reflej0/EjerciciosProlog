residuo(R, A, B):-T1 is integer(A/B), R is abs(A-(T1*B)).
mcd(R, A, B):-B=0, R is A.
mcd(R, A, B):-B>0, residuo(RE, A, B), mcd(R, B, RE),!.