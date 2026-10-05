CREATE DATABASE Hospital;
GO


USE Hospital;
GO


CREATE TABLE Pacientes (
    IdPaciente INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    FechaNacimiento DATE NOT NULL,
    Genero CHAR(1) NOT NULL, -- 'M' o 'F'
    Ciudad VARCHAR(50) NOT NULL
);
GO


CREATE INDEX IX_Pacientes_Apellido 
ON Pacientes (Apellido);
GO


INSERT INTO Pacientes (Nombre, Apellido, FechaNacimiento, Genero, Ciudad) 
VALUES 
('Jon', 'Morales', '1985-04-12', 'M', 'Guatemala'),
('María', 'García', '1992-08-25', 'F', 'Antigua'),
('Carlos', 'Ramírez', '1978-11-03', 'M', 'Quetzaltenango'),
('Laura', 'Fernández', '2000-01-15', 'F', 'Escuintla'),
('Pedro', 'Vásquez', '1995-06-30', 'M', 'Chimaltenango'),
('Lucía', 'Mendoza', '1988-12-19', 'F', 'Cobán');
GO


SELECT * FROM Pacientes;


UPDATE Pacientes
SET Ciudad = 'Mixco'
WHERE IdPaciente = 1;


UPDATE Pacientes
SET Ciudad = 'Guatemala'
WHERE IdPaciente = 4;
GO


UPDATE Pacientes
SET Nombre = 'Jhonny'
WHERE IdPaciente = 1;
GO


DELETE FROM Pacientes
WHERE IdPaciente = 5;
GO


SELECT * FROM Pacientes;