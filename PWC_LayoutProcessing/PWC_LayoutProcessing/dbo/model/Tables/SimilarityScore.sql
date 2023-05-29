CREATE TABLE [model].[SimilarityScore]
(
	[ID]				INT			  IDENTITY(1,1) NOT NULL,
	[Layout_Id_Test]	INT			  NULL,
	[Layout_Id_Ref]		INT			  NULL,
	[Seq_Test]			VARCHAR(MAX)  NULL,
	[Seq_Ref]			VARCHAR(MAX)  NULL,
	[Align_Seq_Test]	VARCHAR(MAX)  NULL,
	[Align_Seq_Ref]		VARCHAR(MAX)  NULL,
	[Score]				FLOAT		  NULL,
	[Run_Date]			DATETIME2	  NULL,

	CONSTRAINT PK_SimilarityScore PRIMARY KEY(ID),
)
