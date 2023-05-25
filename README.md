# libros- ideas 

Tabla "Libros":

id_libro (clave primaria)
nombre_libro
id_editorial (clave externa referenciando a la tabla "Editoriales")
numero_paginas
idioma
edicion
estado 


Tabla "Autores":
id_autor (clave primaria)
nombre_autor
nacionalidad


Tabla "Libros_Autores" (tabla de relación entre libros y autores):
id_libro (clave externa referenciando a la tabla "Libros")
id_autor (clave externa referenciando a la tabla "Autores")


Tabla "Palabras_Clave":
id_palabra (clave primaria)
palabra


Tabla "Libros_Palabras_Clave" (tabla de relación entre libros y palabras clave):
id_libro (clave externa referenciando a la tabla "Libros")
id_palabra (clave externa referenciando a la tabla "Palabras_Clave")


Tabla "Editoriales":
id_editorial (clave primaria)
nombre_editorial
