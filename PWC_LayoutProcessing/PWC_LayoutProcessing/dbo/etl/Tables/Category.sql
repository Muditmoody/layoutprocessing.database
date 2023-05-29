CREATE TABLE [etl].[Category]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[CategoryName] VARCHAR(100) NOT NULL,

	CONSTRAINT PK_Category PRIMARY KEY (Id),
	CONSTRAINT U_Category UNIQUE (CategoryName),
)
