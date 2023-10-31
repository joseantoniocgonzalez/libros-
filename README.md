


-- Crear la tabla Editoriales
CREATE TABLE Editoriales (
    id_editorial INT PRIMARY KEY AUTO_INCREMENT,
    nombre_editorial VARCHAR(255)
);

-- Crear la tabla Autores
CREATE TABLE Autores (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nombre_autor VARCHAR(255),
    nacionalidad VARCHAR(50)
);

-- Crear la tabla Guionistas
CREATE TABLE Guionistas (
    id_guionista INT PRIMARY KEY AUTO_INCREMENT,
    nombre_guionista VARCHAR(255)
);

-- Crear la tabla Dibujantes
CREATE TABLE Dibujantes (
    id_dibujante INT PRIMARY KEY AUTO_INCREMENT,
    nombre_dibujante VARCHAR(255)
);

-- Crear la tabla Palabras_Clave
CREATE TABLE Palabras_Clave (
    id_palabra INT PRIMARY KEY AUTO_INCREMENT,
    palabra VARCHAR(255)
);

-- Crear la tabla Ejemplares
CREATE TABLE Ejemplares (
    id_ejemplar INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    id_editorial INT,
    numero_paginas INT,
    idioma VARCHAR(50),
    edicion VARCHAR(50),
    estado ENUM('nuevo', 'usado'),
    tipo ENUM('libro', 'comic', 'manga'),
    FOREIGN KEY (id_editorial) REFERENCES Editoriales(id_editorial)
);

-- Crear la tabla de relación entre Ejemplares y Autores
CREATE TABLE Ejemplares_Autores (
    id_ejemplar INT,
    id_autor INT,
    FOREIGN KEY (id_ejemplar) REFERENCES Ejemplares(id_ejemplar),
    FOREIGN KEY (id_autor) REFERENCES Autores(id_autor)
);

-- Crear la tabla de relación entre Ejemplares y Guionistas
CREATE TABLE Ejemplares_Guionistas (
    id_ejemplar INT,
    id_guionista INT,
    FOREIGN KEY (id_ejemplar) REFERENCES Ejemplares(id_ejemplar),
    FOREIGN KEY (id_guionista) REFERENCES Guionistas(id_guionista)
);

-- Crear la tabla de relación entre Ejemplares y Dibujantes
CREATE TABLE Ejemplares_Dibujantes (
    id_ejemplar INT,
    id_dibujante INT,
    FOREIGN KEY (id_ejemplar) REFERENCES Ejemplares(id_ejemplar),
    FOREIGN KEY (id_dibujante) REFERENCES Dibujantes(id_dibujante)
);

-- Crear la tabla de relación entre Ejemplares y Palabras_Clave
CREATE TABLE Ejemplares_Palabras_Clave (
    id_ejemplar INT,
    id_palabra INT,
    FOREIGN KEY (id_ejemplar) REFERENCES Ejemplares(id_ejemplar),
    FOREIGN KEY (id_palabra) REFERENCES Palabras_Clave(id_palabra)
);

