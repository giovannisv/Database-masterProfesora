CREATE TABLE [dbo].[Canton]
(
   IdCanton INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_Canton PRIMARY KEY CLUSTERED(IdCanton),
	NombreCanton varchar(50) NULL,
	IdProvincia int NOT NULL
	   CONSTRAINT FK_Canton_Provincia FOREIGN KEY(IdProvincia) REFERENCES dbo.Provincia(IdProvincia)

)WITH (DATA_COMPRESSION = PAGE)
GO