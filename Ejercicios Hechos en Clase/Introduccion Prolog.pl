es_un_pais(argentina).
es_un_pais(peru).
es_un_pais(chile).
es_un_pais(brasil).
es_un_pais(uruguay).
limita_con(argentina,brasil).
limita_con(argentina,uruguay).
limita_con(uruguay, brasil).
limita_con(peru, brasil).
limita_con(chile, argentina).
limitrofes(X,Y):-limita_con(X,Y);limita_con(Y,X).
es_translimitrofe(X,Z):-limitrofes(X,Y),limitrofes(Y,Z),not(limitrofes(X,Z)),not(X==Z).