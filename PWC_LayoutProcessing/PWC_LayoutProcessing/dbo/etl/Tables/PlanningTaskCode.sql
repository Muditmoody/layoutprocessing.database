CREATE TABLE [etl].[PlanningTaskCode]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[TaskCode_Id] INT NOT NULL,

	CONSTRAINT PK_PlanningTaskCode PRIMARY KEY (Id),
	CONSTRAINT U_TaskCode UNIQUE (TaskCode_Id),
	CONSTRAINT FK_Planning FOREIGN KEY (TaskCode_Id) REFERENCES [etl].TaskCode(Id)
)
