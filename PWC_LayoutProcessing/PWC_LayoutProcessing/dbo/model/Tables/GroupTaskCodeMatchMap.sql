CREATE TABLE [model].[GroupTaskCodeMatchMap]
(
	[Id]			INT				IDENTITY(1,1) NOT NULL,
	[CodeGroup]		VARCHAR(255)	NOT NULL,
	[TaskCode]		VARCHAR(255)	NOT NULL,
	[GeneralCode]	VARCHAR(max)	NOT NULL,

	CONSTRAINT PK_GroupTaskCodeMatchMap PRIMARY KEY(ID),
	CONSTRAINT UK_GroupTaskCodeMatchMap UNIQUE (CodeGroup, TaskCode),
)
