DROP TABLE IF EXISTS #TipoIdentificacionTemp

SELECT 
IdCedula,Pasaporte,CedulaJuridica  INTO #TipoIdentificacionTemp
FROM (
VALUES
(1, 'RE-13540','OP500'),
(2, 'AL-14545','AP550'),
(3, 'SA-3543','SP560')

)AS TEMP (IdCedula,Pasaporte,CedulaJuridica)


----ACTUALIZAR DATOS---
UPDATE P SET
  P.Pasaporte= TM.Pasaporte,
  P.CedulaJuridica= TM.CedulaJuridica
FROM dbo.TipoIdentificacion P
INNER JOIN #TipoIdentificacionTemp TM
    ON P.IdCedula= TM.IdCedula


----INSERTAR DATOS---

SET IDENTITY_INSERT dbo.TipoIdentificacion ON

INSERT INTO dbo.TipoIdentificacion(
IdCedula,Pasaporte,CedulaJuridica)
SELECT
IdCedula,Pasaporte,CedulaJuridica
FROM #TipoIdentificacionTemp
