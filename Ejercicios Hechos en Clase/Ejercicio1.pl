%clauses

entrada(paella).
entrada(gazpacho).
entrada(consomé).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).

plato_principal(X):-carne(X);pescado(X).
menu(X, Y, Z):-entrada(X),plato_principal(Z),postre(Y).
menu_con_consome(W, X, Y):-entrada(W),W==consomé,plato_principal(X),postre(Y).
menu_no_flan(X, Y, Z):-entrada(X),plato_principal(Y),postre(Z),not(Z==flan).

%fin clauses