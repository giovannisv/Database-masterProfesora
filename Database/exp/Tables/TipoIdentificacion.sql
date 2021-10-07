CREATE TABLE [dbo].[TipoIdentificacion]
(
	IdTipoIdentificacion INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_Empleado PRIMARY KEY CLUSTERED(IdTipoIdentificacion)
  , Nombre VARCHAR(250) NOT NULL 
  
)
WITH (DATA_COMPRESSION = PAGE)
GO
