CREATE TABLE [etl].[InactiveItemConfig]
(
	[ID]			     INT IDENTITY (1,1),
	[NotificationCode]	 VARCHAR(255) NOT NULL,
	[ItemNumber]		 VARCHAR(255) NOT NULL,
	[IgnoreInactiveTask] INT NOT NULL DEFAULT 0,
	[IgnoreInactiveItem] INT NOT NULL DEFAULT 0,

	CONSTRAINT PK_InactiveItemConfig PRIMARY KEY (ID),
	CONSTRAINT U_InactiveItemConfig UNIQUE (NotificationCode, ItemNumber)
)
