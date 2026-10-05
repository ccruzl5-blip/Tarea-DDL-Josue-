-- 1. Crear la base de datos
CREATE DATABASE Hotel;
GO

-- Seleccionar la base de datos para usarla
USE Hotel;
GO

-- 2. Crear la tabla Habitaciones
CREATE TABLE Habitaciones (
    IdHabitacion INT PRIMARY KEY IDENTITY(1,1),
    Numero INT NOT NULL,
    Tipo VARCHAR(50) NOT NULL,
    Capacidad INT NOT NULL,
    PrecioNoche DECIMAL(10, 2) NOT NULL,
    Estado VARCHAR(20) NOT NULL CHECK (Estado IN ('Disponible', 'Ocupada', 'Mantenimiento'))
);
GO

-- 3. Crear un índice sobre la columna Tipo
CREATE INDEX IX_Habitaciones_Tipo 
ON Habitaciones (Tipo);
GO

-- 4. Insertar 8 habitaciones
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

-- Mostrar los registros insertados
SELECT * FROM Habitaciones;

-- 5. Cambiar el estado de tres habitaciones
-- Cambiar habitación 101 a 'Ocupada'
UPDATE Habitaciones
SET Estado = 'Ocupada'
WHERE IdHabitacion = 1;

-- Cambiar habitación 202 a 'Mantenimiento'
UPDATE Habitaciones
SET Estado = 'Mantenimiento'
WHERE IdHabitacion = 4;

-- Cambiar habitación 301 a 'Disponible'
UPDATE Habitaciones
SET Estado = 'Disponible'
WHERE IdHabitacion = 5;
GO

-- 6. Modificar el precio de dos habitaciones
-- Cambiar precio de la Suite Junior (IdHabitacion = 6)
UPDATE Habitaciones
SET PrecioNoche = 125.00
WHERE IdHabitacion = 6;

-- Cambiar precio del Penthouse (IdHabitacion = 7)
UPDATE Habitaciones
SET PrecioNoche = 280.00
WHERE IdHabitacion = 7;
GO

-- 7. Eliminar una habitación (ejemplo: eliminar la habitación con IdHabitacion = 8)
DELETE FROM Habitaciones
WHERE IdHabitacion = 8;
GO

-- Consulta final para verificar los cambios realizados
SELECT * FROM Habitaciones;