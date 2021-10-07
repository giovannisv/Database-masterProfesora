CREATE PROCEDURE [dbo].[IdentificacionActualizar]
 @IdTipoIdentificacion int,
	@Descripcion varchar(250)
	


AS BEGIN
SET NOCOUNT ON

  BEGIN TRANSACTION TRASA

    BEGIN TRY
	
	UPDATE exp.TipoIdentificacion SET
	Descripcion= @Descripcion
	 
	WHERE 
	       IdTipoIdentificacion=@IdTipoIdentificacion
	
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