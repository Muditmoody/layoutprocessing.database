CREATE TABLE [etl].[DamageCode]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[DamageCode] VARCHAR(10) NOT NULL,
	[DamageText] VARCHAR(255),

	CONSTRAINT PK_DamageCode PRIMARY KEY (Id),
	CONSTRAINT U_DamageCode UNIQUE (DamageCode),
)
