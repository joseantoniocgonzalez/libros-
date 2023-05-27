CREATE TABLE Libros (
  id_libro INT AUTO_INCREMENT PRIMARY KEY,
  nombre_libro VARCHAR(100) CHECK (nombre_libro REGEXP '^[[:upper:]]'),
  id_editorial INT,
  numero_paginas INT,
  idioma VARCHAR(50) CHECK (idioma REGEXP '^[[:upper:]]'),
  edicion INT,
  estado ENUM('Nuevo', 'Usado'),
  tipo  ENUM('Libro', 'Comic'),
  FOREIGN KEY (id_editorial) REFERENCES Editoriales(id_editorial)
);


CREATE TABLE Autores (
  id_autor INT AUTO_INCREMENT PRIMARY KEY,
  nombre_autor VARCHAR(50) CHECK (nombre_autor REGEXP '^[[:upper:]]'),
  nacionalidad VARCHAR(18) CHECK (nacionalidad REGEXP '^[[:upper:]]')
);


