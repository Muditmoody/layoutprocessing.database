CREATE TABLE [etl].[SupplierVendor]
(
	[Id]				INT NOT NULL IDENTITY(1,1),
	[SupplierVendor_Id]	VARCHAR(255) NOT NULL,

	CONSTRAINT PK_SupplierVendor PRIMARY KEY (Id),
	CONSTRAINT U_SV UNIQUE (SupplierVendor_Id)
)
