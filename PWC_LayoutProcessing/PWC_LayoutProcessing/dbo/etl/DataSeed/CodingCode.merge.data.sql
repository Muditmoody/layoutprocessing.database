MERGE INTO [etl].[CodingCode] AS Target
USING (VALUES
			(1, 'Z010'	,'Production Layout Report Tracking'),
			(2, 'Z020'	,'Experimental Layout Report Tracking'),
			(3, 'Z030'	,'Resourcing Layout Report Tracking'),
			(4, 'Z040'	,'Tooling Team Layout Report Tracking')
	)
AS Source (
			[Id],
		  	[Coding],
			[CodingText]
		 )
ON Source.[Id] = Target.[Id]

WHEN MATCHED THEN
UPDATE SET [Coding]		= Source.[Coding],
		   [CodingText] = Source.[CodingText]


WHEN NOT MATCHED BY Target THEN
INSERT (
		[Coding],
		[CodingText]
		)
		VALUES
		(
		[Coding],
		[CodingText]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
