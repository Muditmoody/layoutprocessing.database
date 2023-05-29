﻿
CREATE TABLE [etl].[CodeGroup]
(
	[Id]		INT NOT NULL IDENTITY(1,1),
	[GroupCode] VARCHAR(255) NOT NULL,
	[GroupText] VARCHAR(500),

	CONSTRAINT PK_CodeGroup PRIMARY KEY (Id),
	CONSTRAINT U_GroupCode UNIQUE (GroupCode)
)
