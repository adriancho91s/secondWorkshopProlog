%-- Recursive --- %
existe_conexion(vancouver, edmonton, 16 ).
existe_conexion(vancouver, calgary, 13 ).
existe_conexion(edmonton, saskatoon, 12).
existe_conexion(calgary, edmonton, 4).
existe_conexion(calgary, regina, 14).
existe_conexion(saskatoon, calgary, 9).
existe_conexion(saskatoon, winnipeg, 20).
existe_conexion(regina, saskatoon, 7).
existe_conexion(regina, winnipeg, 4).

tiene_aristas(Ciudad):- existe_conexion(Ciudad, _, _).

costos_y_conexion_de(CiudadOrigen, CiudadDestino, Costo):-
    existe_conexion(CiudadOrigen, CiudadDestino, Costo).

costos_y_conexion_de(CiudadOrigen, CiudadDestino, Costo):-
    existe_conexion(CiudadOrigen,CiudadIntermedia, Costo2),
    costos_y_conexion_de(CiudadIntermedia, CiudadDestino, Costo1),
        Costo is Costo1 + Costo2.

%--CONSULT: costos_y_conexion_de(vancouver, saskatoon, Costo).--%
