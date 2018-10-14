hombre(pedro) .
hombre(manuel) .
hombre(arturo) .
mujer(maría).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maría) .

nino(X,Y):-padre(Y,X).
hijo(X,Y):-padre(Y,X),hombre(X).
hija(X,Y):-padre(Y,X),mujer(X).
hermanoohermana(X,Y):-nino(X,Z),nino(Y,Z),not(X==Y).
%fin clauses