CREATE TABLE [etl].[EngineProgram]
(
	[Id]				INT NOT NULL IDENTITY(1,1),
	[Notification_Id]	VARCHAR (255) NOT NULL,
	[Description]		VARCHAR (500) NOT NULL DEFAULT(''),
	[CodingCode]		INT NOT NULL,

	CONSTRAINT PK_EngineProgram PRIMARY KEY (Id),
	CONSTRAINT FK_EngProg_Coding FOREIGN KEY (CodingCode) REFERENCES [etl].CodingCode(Id),
	CONSTRAINT U_Notif UNIQUE(Notification_id)
)
