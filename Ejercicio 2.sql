CREATE DATABASE Empresa;
GO


USE Empresa;
GO

-- 2. Crear la tabla Empleados
CREATE TABLE Empleados (
    IdEmpleado INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Puesto VARCHAR(50) NOT NULL,
    Salario DECIMAL(10, 2) NOT NULL,
    Departamento VARCHAR(50) NOT NULL
);
GO


CREATE INDEX IX_Empleados_Apellido 
ON Empleados (Apellido);
GO


INSERT INTO Empleados (Nombre, Apellido, Puesto, Salario, Departamento) 
VALUES 
('Josue', 'Pérez', 'Desarrollador', 2500.00, 'Sistemas'),
('María', 'Cruz', 'Analista de Datos', 2800.00, 'Sistemas'),
('Carlos', 'López', 'Contador', 2200.00, 'Finanzas'),
('Ana', 'Martínez', 'Gerente de Ventas', 3500.00, 'Ventas'),
('Luis', 'Hernández', 'Especialista en Selección', 1900.00, 'Recursos Humanos'),
('Gabriela', 'Rodríguez', 'Diseñadora UI/UX', 2400.00, 'Diseño');
GO


SELECT * FROM Empleados;


UPDATE Empleados
SET Salario = Salario + 300.00
WHERE IdEmpleado = 1;
GO


UPDATE Empleados
SET Departamento = 'Sistemas'
WHERE IdEmpleado = 6;
GO


DELETE FROM Empleados
WHERE IdEmpleado = 5;
GO


SELECT * FROM Empleados;