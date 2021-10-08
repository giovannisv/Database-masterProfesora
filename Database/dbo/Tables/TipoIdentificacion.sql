CREATE TABLE [dbo].[TipoIdentificacion]
(
	
	IdCedula INT NOT NULL  IDENTITY(1,1) CONSTRAINT PK_TipoIdentificacion PRIMARY KEY CLUSTERED(IdCedula)
   ,IdTipoIdentificacion INT NOT NULL
  ,Pasaporte VARCHAR(250) NOT NULL
  ,CedulaJuridica VARCHAR (250) NOT NULL
  ,Descripcion VARCHAR (250) NOT NULL
  
)
WITH (DATA_COMPRESSION = PAGE)
GO
