﻿CREATE TABLE [etl].[CauseCode]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[CauseCode] VARCHAR(10) NOT NULL,
	[CauseText] VARCHAR(255),

	CONSTRAINT PK_CauseCode PRIMARY KEY (Id),
	CONSTRAINT U_CauseCode UNIQUE (CauseCode),
)
