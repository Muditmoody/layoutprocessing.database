CREATE TABLE [etl].[TaskCode]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[TaskCode] VARCHAR (255) NOT NULL,
	[TaskCodeText] VARCHAR (500),
	[GroupCode] INT NOT NULL,

	CONSTRAINT PK_TaskCode PRIMARY KEY (Id),
	CONSTRAINT FK_Group FOREIGN KEY (GroupCode) REFERENCES [etl].CodeGroup(Id),
	CONSTRAINT U_Group_Code UNIQUE (GroupCode, TaskCode)
)
