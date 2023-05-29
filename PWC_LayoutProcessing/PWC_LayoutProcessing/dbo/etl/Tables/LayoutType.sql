CREATE TABLE [etl].[LayoutType]
(
	[Id]				INT NOT NULL IDENTITY(1,1),
	[Notification_Id]	INT NOT NULL,
	[Item_Number]		VARCHAR(10) NOT NULL,
	[Layout_Text]		VARCHAR(500) NOT NULL,
	[DamageCode]		INT NOT NULL,
	[CauseCode]			INT NOT NULL,

	CONSTRAINT PK_LayoutType PRIMARY KEY (Id),
	CONSTRAINT FK_LayoutType_Notif FOREIGN KEY (Notification_Id) REFERENCES [etl].EngineProgram(Id),
	CONSTRAINT FK_LayoutType_DamageCode FOREIGN KEY (DamageCode) REFERENCES [etl].DamageCode(Id),
	CONSTRAINT FK_LayoutType_CauseCode FOREIGN KEY (CauseCode) REFERENCES [etl].CauseCode(Id),
	CONSTRAINT U_Notif_Item UNIQUE(Notification_Id, Item_Number)
)
