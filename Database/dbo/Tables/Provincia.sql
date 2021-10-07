CREATE TABLE [dbo].[Provincia]
(
	[IdProvincia] INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_Provincia PRIMARY KEY CLUSTERED(IdProvincia)
   ,NombreProvincia VARCHAR(50) NOT NULL
)
