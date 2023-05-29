CREATE TABLE [etl].[LayoutProcessingTasks]
(
	[Id]				INT NOT NULL IDENTITY(1,1),
	[Layout_Id]			INT NOT NULL,
	[Task_Id]			VARCHAR(10),
	[Material_Id]		INT NOT NULL,
	[Created_On]		DateTime2,
	[Completed_On]		DateTime2,
	[Task_Text]			VARCHAR(500),
	[Task_Code_Id]		INT NOT NULL,
	[Planned_Start]		DateTime2,
	[Planned_Finish]	DateTime2,
	[SupplierVendor_Id]	INT NOT NULL,
	[Task_Owner_Id]		INT NOT NULL,
	[Task_Status_Id]	INT NOT NULL,

	CONSTRAINT PK_LayoutProcessing PRIMARY KEY (Id),
	CONSTRAINT FK_Layout_LayoutType FOREIGN KEY (Layout_Id) REFERENCES [etl].LayoutType(Id),
	CONSTRAINT FK_Layout_Material FOREIGN KEY (Material_Id) REFERENCES [etl].Material(Id),
	CONSTRAINT FK_Layout_TaskCode FOREIGN KEY (Task_Code_Id) REFERENCES [etl].TaskCode(Id),
	CONSTRAINT FK_Layout_Supplier FOREIGN KEY (SupplierVendor_Id) REFERENCES [etl].SupplierVendor(Id),
	CONSTRAINT FK_Layout_TaskOwner FOREIGN KEY (Task_Owner_Id) REFERENCES [etl].TaskOwner(Id),
	CONSTRAINT FK_Layout_TaskStatus FOREIGN KEY (Task_Status_Id) REFERENCES [etl].TaskStatus(Id),

	CONSTRAINT U_Layout_Task UNIQUE(Layout_Id, Task_Id)
)
