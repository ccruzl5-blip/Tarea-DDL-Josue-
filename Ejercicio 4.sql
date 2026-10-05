CREATE DATABASE Hotel;
GO

USE Hotel;
GO

CREATE TABLE Habitaciones (
    IdHabitacion INT PRIMARY KEY IDENTITY(1,1),
    Numero INT NOT NULL,
    Tipo VARCHAR(50) NOT NULL,
    Capacidad INT NOT NULL,
    PrecioNoche DECIMAL(10, 2) NOT NULL,
    Estado VARCHAR(20) NOT NULL CHECK (Estado IN ('Disponible', 'Ocupada', 'Mantenimiento'))
);
GO

CREATE INDEX IX_Habitaciones_Tipo 
ON Habitaciones (Tipo);
GO

INSERT INTO Habitaciones (Numero, Tipo, Capacidad, PrecioNoche, Estado) 
VALUES 
(101, 'Simple', 1, 45.00, 'Disponible'),
(102, 'Simple', 1, 45.00, 'Disponible'),
(201, 'Doble', 2, 75.00, 'Ocupada'),
(202, 'Doble', 2, 75.00, 'Disponible'),
(301, 'Suite', 4, 150.00, 'Ocupada'),
(302, 'Suite Junior', 3, 110.00, 'Disponible'),
(401, 'Penthouse', 5, 250.00, 'Mantenimiento'),
(402, 'Doble', 2, 80.00, 'Disponible');
GO

UPDATE Habitaciones
SET Estado = 'Ocupada'
WHERE IdHabitacion = 1;

UPDATE Habitaciones
SET Estado = 'Mantenimiento'
WHERE IdHabitacion = 4;

UPDATE Habitaciones
SET Estado = 'Disponible'
WHERE IdHabitacion = 5;
GO

UPDATE Habitaciones
SET PrecioNoche = 125.00
WHERE IdHabitacion = 6;

UPDATE Habitaciones
SET PrecioNoche = 280.00
WHERE IdHabitacion = 7;
GO

DELETE FROM Habitaciones
WHERE IdHabitacion = 8;
GO

SELECT * FROM Habitaciones;