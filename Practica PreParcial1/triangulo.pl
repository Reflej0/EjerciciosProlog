verdadero(v,verdadero).
falso(f,falso).
equilatero(e,equilatero).
isosceles(i,isosceles).
escaleno(es,escaleno).
noestriangulo(n,noestriangulo).
suma(R, A, B):-R is A+B.
mayor(R, A, B):-(A > B) ->  verdadero(v,R);falso(f,R).
resta(R, A, B):-R is A-B.
%menor(R, A, B):-(A < B) ->  verdadero(v,R);falso(f,R).
%https://es.wikihow.com/saber-si-hay-un-tri%C3%A1ngulo-teniendo-las-medidas-de-tres-lados
es_triangulo(R, A, B, C):-suma(R1, A, B),suma(R2, A, C),suma(R3, B, C),
mayor(M1, R1, C),mayor(M2, R2, B),mayor(M3, R3, A),
(M1=M2,M2=M3) ->  verdadero(v, R);falso(f,R).
es_equilatero(R, A, B, C):-resta(R1, A, B),resta(R2, A, C),resta(R3, B,C),
(R1=0,R2=0,R3=0)->verdadero(v, R);falso(f,R).
es_isosceles(R, A, B, C):-(A=B;B=C;A=C)->verdadero(v,R);falso(f, R).
tipo_triangulo(R, A, B, C):-es_triangulo(T, A, B, C),(T=falso)->noestriangulo(n,R);
es_equilatero(X, A, B, C),(X=verdadero)->equilatero(e, R);
es_isosceles(I, A, B, C),(I=verdadero)->isosceles(i, R);escaleno(es,R).

%NO ES TRIANGULO
%tipo_triangulo(R, 5, 3, 8).
%ES ESCALENO
%tipo_triangulo(R, 5, 4, 3).
%ES ISOSCELES
%tipo_triangulo(R, 5, 4, 5).
%ES EQUILATERO
%tipo_triangulo(R, 5, 5, 5).