CREATE TABLE [model].[TaskDurationPrediction]
(
	[ID]					INT				IDENTITY(1,1) NOT NULL,
	[ModelDataInput_Id]		INT				NOT NULL,
	[PredictionResult]		FLOAT			NULL DEFAULT(-1),
	[RunDate]				DATETIME2(7)	NOT NULL,

	CONSTRAINT PK_TaskDurationPrediction PRIMARY KEY(ID),
	CONSTRAINT [FK_ModelInput] FOREIGN KEY([ModelDataInput_Id]) REFERENCES [model].[CleanModelInput] ([ID])
)
