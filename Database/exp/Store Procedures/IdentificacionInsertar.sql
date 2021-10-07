﻿CREATE PROCEDURE [dbo].[IdentificacionInsertar]
	@Descripcion varchar(250)
	

AS BEGIN
SET NOCOUNT ON

  BEGIN TRANSACTION TRASA

    BEGIN TRY
	
	INSERT INTO exp.TipoIdentificacion
	(Descripcion
	 
	)
	VALUES
	(
	@Descripcion
	
	)

  COMMIT TRANSACTION TRASA
  SELECT 0 AS CodeError, '' AS MsgError

  END TRY

  BEGIN CATCH

   SELECT 
         ERROR_NUMBER() AS CodeError,
		 ERROR_MESSAGE() AS MsgError
   
   ROLLBACK TRANSACTION TRASA

   END CATCH

 END
