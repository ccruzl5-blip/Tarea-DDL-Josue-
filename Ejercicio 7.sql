CREATE DATABASE Inventario;
GO

USE Inventario;
GO

CREATE TABLE Productos (
    IdProducto INT PRIMARY KEY IDENTITY(1,1),
    Codigo VARCHAR(20) NOT NULL UNIQUE,
    Nombre VARCHAR(100) NOT NULL,
    Categoria VARCHAR(50) NOT NULL,
    Existencia INT NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL
);
GO

CREATE INDEX IX_Productos_Codigo 
ON Productos (Codigo);
GO

INSERT INTO Productos (Codigo, Nombre, Categoria, Existencia, Precio) 
VALUES 
('PROD-001', 'Laptop HP 15', 'Tecnología', 15, 650.00),
('PROD-002', 'Mouse Inalámbrico', 'Accesorios', 50, 15.50),
('PROD-003', 'Teclado Mecánico', 'Accesorios', 30, 45.00),
('PROD-004', 'Monitor 24"', 'Tecnología', 10, 180.00),
('PROD-005', 'Silla Ergonómica', 'Mobiliario', 8, 120.00),
('PROD-006', 'Escritorio de Madera', 'Mobiliario', 5, 210.00),
('PROD-007', 'Impresora Multifuncional', 'Tecnología', 12, 140.00),
('PROD-008', 'Disco Duro Externo 1TB', 'Almacenamiento', 25, 60.00);
GO

UPDATE Productos
SET Precio = 599.99
WHERE IdProducto = 1;

UPDATE Productos
SET Precio = 165.00
WHERE IdProducto = 4;
GO

UPDATE Productos
SET Existencia = Existencia + 10
WHERE IdProducto = 2;

UPDATE Productos
SET Existencia = Existencia - 2
WHERE IdProducto = 5;

UPDATE Productos
SET Existencia = 40
WHERE IdProducto = 8;
GO

DELETE FROM Productos
WHERE IdProducto = 7;
GO

SELECT * FROM Productos;