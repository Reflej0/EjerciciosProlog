pais_superficie(arg, 2.78).
pais_superficie(bra, 8.51).
pais_superficie(chi, 0.75).
pais_superficie(uru, 0.17).
pais_superficie(bol, 1.09).

proy_sup(A):-pais_superficie(_,A).
proy_cart(A,B):-proy_sup(A),proy_sup(B),A<B.
proy_prod_cart(A):-proy_cart(A,_).
mayor_sup(A):-proy_sup(A),not(proy_prod_cart(A)).
pais_mayor_sup(A,B):-mayor_sup(B),pais_superficie(A,B).