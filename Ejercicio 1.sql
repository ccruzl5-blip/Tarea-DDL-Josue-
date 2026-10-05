CREATE DATABASE Biblioteca;
GO

USE Biblioteca;
GO 

CREATE TABLE Libros (
	IdLibro INT PRIMARY KEY IDENTITY(1,1),
	Titulo VARCHAR(150) NOT NULL,
	AUTOR VARCHAR(100) NOT NULL,
	AnioPublicacion INT NOT NULL,
	Categoria VARCHAR(50) NOT NULL,
	Precio DECIMAL(10, 2) NOT NULL
);
GO

CREATE INDEX IX_Libros_Titulo
ON Libros (Titulo);
GO

INSERT INTO Libros (Titulo, Autor, AnioPublicacion, Categoria, Precio)
VALUES
('Cien años de soledad', 'Gabriel García Márquez', 1967, 'Novela', 25.50),
('Don Quijote de la Mancha', 'Miguel de Cervantes', 1605, 'Clásico', 30.00),
('El principito', 'Antoine de Saint-Exupéry', 1943, 'Fabulación', 15.00),
('1984', 'George Orwell', 1949, 'Ciencia Ficción', 20.00),
('Fahrenheit 451', 'Ray Bradbury', 1953, 'Ciencia Ficción', 18.50);
GO

SELECT * FROM Libros;

UPDATE Libros
SET Precio = 12.50
WHERE IdLibro = 3;


UPDATE Libros 
SET Categoria = 'Distopía'
WHERE IdLibro = 4;
GO

DELETE FROM Libros
WHERE IdLibro = 5
GO

SELECT * FROM Libros;