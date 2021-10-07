CREATE PROCEDURE [EXP].[EmpleadoActualizar]
    @IdEmpleado int,
	@Nombre varchar(50),
	@PrimerApellido varchar(50),
	@SegundoApellido varchar(50),
	@Edad int, 
	@FechaNacimiento Datetime


AS BEGIN
SET NOCOUNT ON

  BEGIN TRANSACTION TRASA

    BEGIN TRY
	
	UPDATE exp.Empleado SET
	Nombre= @Nombre,
	 PrimerApellido=@PrimerApellido,
	 SegundoApellido=@SegundoApellido,
	 Edad= @Edad,
	 FechaNacimiento=@FechaNacimiento
	WHERE 
	       IdEmpleado=@IdEmpleado
	
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