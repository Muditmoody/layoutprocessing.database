CREATE TABLE [etl].[TaskStatus]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[TaskStatus] VARCHAR (255) NOT NULL,

	CONSTRAINT PK_TaskStatus PRIMARY KEY (Id),
	CONSTRAINT U_TaskStatus UNIQUE (TaskStatus)
)
