MERGE INTO [etl].[DamageCode] AS Target
USING (VALUES
			(1, '10'	,'Layout Type Periodic'),
			(2, '20'	,'Layout Type Partial'),
			(3, '30'	,'Layout Type Initial'),
			(4, '40'	,'Layout Qual with PSIP'),
			(5, '0165'  ,'QN Item Void')
	)
AS Source (
			[Id],
		  	[DamageCode],
			[DamageText]
		 )
ON Source.[Id] = Target.[Id]

WHEN MATCHED THEN
UPDATE SET [DamageCode] = Source.[DamageCode],
		   [DamageText] = Source.[DamageText]


WHEN NOT MATCHED BY Target THEN
INSERT (
		[DamageCode],
		[DamageText]
		)
		VALUES
		(
		[DamageCode],
		[DamageText]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
