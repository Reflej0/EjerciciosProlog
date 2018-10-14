viaje(japon, 50).
viaje(noruega, 100).
viaje(argentina, 10).
viaje(eEUU, 30).
viaje(china, 90).
viaje(tailandia, 70).
viaje(chile, 10).
viaje(uruguay, 10).
viaje(suiza, 100).

%Obtengo solo los precios de los viajes.
proyeccionViaje(A):-viaje(_, A).
%Hago el producto cartesiano de los precios de los viajes con la condicion A>B, contraria a lo que busco A<B.
cartProy(A,B):-proyeccionViaje(A), proyeccionViaje(B),A>B.
%Del producto cartesiano, solo me quedo con la primera columna.
proyCart(A):-cartProy(A, _).
%El menor es el resultado de todos los precios de los viajes, menos el conjunto donde no esta el menor.
menor(A):-proyeccionViaje(A),not(proyCart(A)),!.
%Busco todos los viajes que tengan el precio del menor.
viajeMenor(A, B):-menor(B), viaje(A, B).