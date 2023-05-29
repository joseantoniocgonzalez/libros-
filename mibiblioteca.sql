CREATE TABLE Ejemplares (
  id_ejemplar INT AUTO_INCREMENT PRIMARY KEY,
  nombre_ejemplar VARCHAR(100) CHECK (nombre_ejemplar REGEXP '^[[:upper:]]'),
  id_editorial INT,
  numero_paginas INT,
  idioma VARCHAR(50) CHECK (idioma REGEXP '^[[:upper:]]'),
  edicion INT,
  estado VARCHAR(10) CHECK (estado IN ('Nuevo', 'Usado')),
  tipo VARCHAR(10) CHECK (tipo IN ('Libro', 'Comic', 'Manga')),
  FOREIGN KEY (id_editorial) REFERENCES Editoriales(id_editorial)
);

CREATE TABLE Autores (
  id_autor INT AUTO_INCREMENT PRIMARY KEY,
  nombre_autor VARCHAR(50) CHECK (nombre_autor REGEXP '^[[:upper:]]'),
  nacionalidad VARCHAR(18) CHECK (nacionalidad REGEXP '^[[:upper:]]')
);

CREATE TABLE Guionistas (
  id_guionista INT AUTO_INCREMENT PRIMARY KEY,
  nombre_guionista VARCHAR(50) CHECK (nombre_guionista REGEXP '^[[:upper:]]'),
  nacionalidad VARCHAR(18) CHECK (nacionalidad REGEXP '^[[:upper:]]')
);

CREATE TABLE Dibujantes (
  id_dibujante INT AUTO_INCREMENT PRIMARY KEY,
  nombre_dibujante VARCHAR(50) CHECK (nombre_dibujante REGEXP '^[[:upper:]]'),
  nacionalidad VARCHAR(18) CHECK (nacionalidad REGEXP '^[[:upper:]]')
);

CREATE TABLE Ejemplares_Guionistas (
  id_ejemplar INT AUTO_INCREMENT,
  id_guionista INT AUTO_INCREMENT,
  CONSTRAINT pk_Ejemplares_Guionistas PRIMARY KEY (id_ejemplar, id_guionista)
);

CREATE TABLE Ejemplares_Dibujantes (
  id_ejemplar INT AUTO_INCREMENT,
  id_dibujante INT AUTO_INCREMENT,
  CONSTRAINT pk_Ejemplares_Dibujantes PRIMARY KEY (id_ejemplar, id_dibujante)
);

CREATE TABLE Ejemplares_Autores (
  id_autor INT AUTO_INCREMENT,
  id_ejemplar INT AUTO_INCREMENT,
  CONSTRAINT pk_Ejemplares_Autores PRIMARY KEY (id_autor, id_ejemplar)
);

CREATE TABLE Palabras_Clave (
  id_palabra INT AUTO_INCREMENT PRIMARY KEY,
  palabra VARCHAR(20) CHECK (palabra REGEXP '^[[:upper:]]')
);

CREATE TABLE Ejemplares_Palabras_Clave (
  id_ejemplar INT AUTO_INCREMENT,
  id_palabra INT AUTO_INCREMENT,
  CONSTRAINT pk_Ejemplares_Palabras_Clave PRIMARY KEY (id_ejemplar, id_palabra)
);

CREATE TABLE Editoriales (
  id_editorial INT AUTO_INCREMENT PRIMARY KEY,
  nombre_editorial VARCHAR(30) CHECK (nombre_editorial REGEXP '^[[:upper:]]')
);

