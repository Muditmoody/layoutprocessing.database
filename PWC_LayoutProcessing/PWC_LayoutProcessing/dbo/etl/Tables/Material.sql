CREATE TABLE [etl].[Material]
(
	[Id]			INT NOT NULL IDENTITY(1,1),
	[Material_Id]	VARCHAR(255) NOT NULL,
	[Description]	VARCHAR(500),
	[Category_Id]	INT NULL DEFAULT 0,

	CONSTRAINT PK_Material PRIMARY KEY (Id),
	CONSTRAINT U_Material UNIQUE(Material_Id),
	CONSTRAINT FK_Material_Category FOREIGN KEY (Category_Id) REFERENCES [etl].Category(Id)
)
