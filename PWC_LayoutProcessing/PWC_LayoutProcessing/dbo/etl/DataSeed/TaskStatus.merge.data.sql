MERGE INTO [etl].[TaskStatus] AS Target
USING (VALUES
			(1,'TSCO REL'),
			(2,'TSCO CANC'),
			(3,'TSRL REL'),
			(4,'TSCO TSSC REL'),
			(5,'TSOS REL'),
			(6,'TSCO TSSC CANC'),
			(7,'TSOS CANC'),
			(8,'TSCO RREL')
	)
AS Source (
			[Id],
		  	[TaskStatus]
		 )
ON Source.[Id] = Target.[Id]

WHEN MATCHED THEN
UPDATE SET [TaskStatus] = Source.[TaskStatus]

WHEN NOT MATCHED BY Target THEN
INSERT (
		[TaskStatus]
		)
		VALUES
		(
		[TaskStatus]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
