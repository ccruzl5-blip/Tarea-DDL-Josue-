
CREATE DATABASE Universidad;
GO


USE Universidad;
GO


CREATE TABLE Cursos (
    IdCurso INT PRIMARY KEY IDENTITY(1,1),
    NombreCurso VARCHAR(100) NOT NULL,
    Carrera VARCHAR(100) NOT NULL,
    Creditos INT NOT NULL,
    Catedratico VARCHAR(100) NOT NULL,
    Horario VARCHAR(50) NOT NULL
);
GO


CREATE INDEX IX_Cursos_NombreCurso 
ON Cursos (NombreCurso);
GO


INSERT INTO Cursos (NombreCurso, Carrera, Creditos, Catedratico, Horario) 
VALUES 
('Bases de Datos I', 'Ingeniería en Sistemas', 5, 'Ing. Carlos Mendoza', '07:00 - 09:00'),
('Programación Web', 'Ingeniería en Sistemas', 4, 'Inga. Lucía Morales', '09:00 - 11:00'),
('Cálculo Diferencial', 'Ingeniería Civil', 6, 'Dr. Roberto Gómez', '11:00 - 13:00'),
('Contabilidad General', 'Administración de Empresas', 3, 'Lic. Mario Ramos', '14:00 - 16:00'),
('Derecho Mercantil', 'Derecho', 4, 'Licda. Elena Torres', '16:00 - 18:00'),
('Física General', 'Ingeniería Mecánica', 5, 'Ing. Fernando Ruiz', '18:00 - 20:00');
GO


SELECT * FROM Cursos;


UPDATE Cursos
SET Creditos = 5
WHERE IdCurso = 2;
GO

-- 6. Cambiar el catedrático de otro curso (ejemplo: cambiar catedrático en 'Contabilidad General')
UPDATE Cursos
SET Catedratico = 'Licda. Andrea Castillo'
WHERE IdCurso = 4;
GO

-- 7. Eliminar un curso (ejemplo: eliminar 'Física General' con IdCurso = 6)
DELETE FROM Cursos
WHERE IdCurso = 6;
GO

-- Consulta final para verificar los cambios realizados
SELECT * FROM Cursos;