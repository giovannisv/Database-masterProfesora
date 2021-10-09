CREATE PROCEDURE [dbo].[IdentificacionObtener]
	 @IdTipoIdentificacion int= NULL
AS BEGIN
  SET NOCOUNT ON

  SELECT 
     E.IdTipoIdentificacion,
     E.Descripcion
        
    FROM dbo.TipoIdentificacion E
    WHERE
    (@IdTipoIdentificacion IS NULL OR IdTipoIdentificacion=@IdTipoIdentificacion)

END
