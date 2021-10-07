DROP TABLE IF EXISTS #ProvinciaTemp

SELECT 
IdProvincia, NombreProvincia INTO #ProvinciaTemp
FROM (
VALUES
(1, 'SAN JOSÉ'),
(2, 'ALAJUELA'),
(3, 'CARTAGO'),
(4, 'HEREDIA'),
(5, 'GUANACASTE'),
(6, 'PUNTARENAS'),
(7, 'LIMON')
)AS TEMP (IdProvincia, NombreProvincia)


----ACTUALIZAR DATOS---
UPDATE P SET
  P.NombreProvincia= TM.NombreProvincia
FROM Dbo.Provincia P
INNER JOIN #ProvinciaTemp TM
    ON P.IdProvincia= TM.IdProvincia


----INSERTAR DATOS---

SET IDENTITY_INSERT dbo.Provincia ON

INSERT INTO dbo.Provincia(
IdProvincia, NombreProvincia)
SELECT
IdProvincia, NombreProvincia
FROM #ProvinciaTemp


EXCEPT
SELECT
IdProvincia, NombreProvincia
FROM dbo.Provincia


SET IDENTITY_INSERT dbo.Provincia OFF

GO