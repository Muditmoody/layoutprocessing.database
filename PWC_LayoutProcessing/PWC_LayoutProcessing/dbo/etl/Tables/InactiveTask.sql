CREATE TABLE [etl].[InactiveTask]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Task_Id] INT NOT NULL,

	CONSTRAINT PK_Inactive PRIMARY KEY (Id),
	CONSTRAINT FK_Inactive_Task FOREIGN KEY (Task_Id) REFERENCES [etl].LayoutProcessingTasks(Id),
)
