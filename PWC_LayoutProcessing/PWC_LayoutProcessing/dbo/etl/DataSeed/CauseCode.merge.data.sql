MERGE INTO [etl].[CauseCode] AS Target
USING (VALUES
			(1	 ,''    ,''),
			(2	 ,'L040','New Source'),
			(3	 ,'L020','Extension'),
			(4	 ,'L055','Previous Layout Expired'),
			(5	 ,'L010','Drawing Change'),
			(6	 ,'L060','Process Change'),
			(7	 ,'L030','New Part Number'),
			(8	 ,'S100','Tool/Die'),
			(9	 ,'L050','New Tool'),
			(10  ,'V900','Item DELETED'),
			(11  ,'S090','Process'),
			(12  ,'S110','Vendor Process'),
			(13  ,'L080','Rapid Prototype'),
			(14  ,'S040','Excess Material'),
			(15  ,'S030','Deviating Material'),
			(16  ,'P085','New Process = Casting Variation'),
			(17  ,'L070','Tool Repair/Rework')
	 )
AS Source (
			[Id],
		  	[CauseCode],
			[CauseText]
		 )
ON Source.[Id] = Target.[Id]

WHEN MATCHED THEN
UPDATE SET [CauseCode] = Source.[CauseCode],
		   [CauseText] = Source.[CauseText]


WHEN NOT MATCHED BY Target THEN
INSERT (
		[CauseCode],
		[CauseText]
		)
		VALUES
		(
		[CauseCode],
		[CauseText]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
