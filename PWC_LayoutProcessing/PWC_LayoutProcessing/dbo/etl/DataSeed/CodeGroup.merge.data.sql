MERGE INTO [etl].[CodeGroup] AS Target
USING (VALUES
	    (1,'DATTACHM','Attachments to QN'),
		(2,'DEXPORTC','Export Control Classification'),
		(3,'DINSTRUC','Instructions for a Disposition'),
		(4,'DISQRPRO','QR Disposition (Production Material)'),
		(5,'DISQRX','QR Disposition (Development Material)'),
		(6,'ECCOMBUS','Combustion Component Center (Eng''r)'),
		(7,'ECCOMPR','Compressor Component Center (Eng''r)'),
		(8,'ECECN','ECN Component Center (Eng''r)'),
		(9,'ECMECHAN','Mechanical Component Center'),
		(10,'ECMSI','Mechanical Systems Integration (Eng''r)'),
		(11,'ECOPPER','Engr Performance, Fluids and Operability'),
		(12,'ECPC','ENSIP Critial Part Committee (ECPC)'),
		(13,'ECPCREV','Item Task submitted for ECPC Review'),
		(14,'ECRPC','Critical Parts Committee (CRPC)'),
		(15,'ECRPCREV','Item Task submitted for CRPC Review'),
		(16,'ECSTATIC','Static Structures'),
		(17,'ECTURBIN','Turbine Component Center (Eng''r)'),
		(18,'ECVE','Eng''g (Compliance Verification Engineer)'),
		(19,'EDAA','Eng''g (Design Approval Appointee)'),
		(20,'EDPCEAE','Eng''r.Design PCE Accessories'),
		(21,'EDPCECLD','Eng''r.Design PCE COLD End Module'),
		(22,'EDPCEHOT','Eng''r.Design PCE HOT End Module'),
		(23,'EDTPT6A','Engineering Dev''t Test PT6A'),
		(24,'EHOLDCOD','Engineering Holding Codes'),
		(25,'ELAYOUT','MAE Item Task for Layout Report'),
		(26,'EMATENGG','Eng''g (Material Engineering)'),
		(27,'EPAPS','Projects Auxiliary Power System'),
		(28,'EPCEWSKE','Eng''r.Design PCE ECN Module WSK'),
		(29,'EPJT15D','Projects JT15D'),
		(30,'EPMGR','Engineering Project Managers'),
		(31,'EPMINSTR','Proj. Mgr. Instruc. (non-flight engines)'),
		(32,'EPPT6A','Projects PT6A'),
		(33,'EPPT6C','Projects PT6C'),
		(34,'EPPT6E','Projects PT6E'),
		(35,'EPPT6T/B','Projects PT6T, PT6B'),
		(36,'EPPT9A','Projects PT9A'),
		(37,'EPPW100','Projects PW100'),
		(38,'EPPW1200','Projects PW1200G'),
		(39,'EPPW150','Projects PW150'),
		(40,'EPPW1500','Projects PW1500G'),
		(41,'EPPW200','Projects PW200'),
		(42,'EPPW210','Projects PW210'),
		(43,'EPPW220','Projects PW220'),
		(44,'EPPW305','Projects PW305/306'),
		(45,'EPPW307','Projects PW307'),
		(46,'EPPW308','Projects PW308'),
		(47,'EPPW500','Projects PW500'),
		(48,'EPPW610','Projects PW610'),
		(49,'EPPW615','Projects PW615'),
		(50,'EPPW617','Projects PW617'),
		(51,'EPPW812','Projects PW812'),
		(52,'EPPW814','Projects PW814'),
		(53,'EPPW815','Projects PW815'),
		(54,'EPPW900','Projects PW900'),
		(55,'EPROJMGR','Project Manager Non-Flight Engines'),
		(56,'EPRT','Projects Research Technology'),
		(57,'EPST18','Projects ST18, ST30, ST40'),
		(58,'EPSTO','Project Support to Operations'),
		(59,'EPSTONA','Project Support to Oper.(Non-Authorized)'),
		(60,'EQNCOORD','QN Co-Ordinator for Engineering'),
		(61,'ERELSAFE','Reliability Safety'),
		(62,'FATTS','Item Task for Assy Test'),
		(63,'FHALIBLA','Item Task for Halifax Blade Manuf''g'),
		(64,'FHALIC1','Item Task for Halifax Case Line 1 Mfg.'),
		(65,'FLAB','Item Task for Laboratory'),
		(66,'FLAYOUT','QS Item Task for Layout Report'),
		(67,'FMR','Item Task for Material Review'),
		(68,'FPID','Item Task for Parent Inspection Dep''t.'),
		(69,'FPLAN','Item Task for Methods Planning'),
		(70,'FPQCR','Item Task for PQCR'),
		(71,'FQR','Item Task for Quality Review'),
		(72,'FQRE','PWEH'),
		(73,'LIAV00','Vendor from 1000 to 9999'),
		(74,'PWCCAPA8','8 Step Request for Corr. / Prev. Action'),
		(75,'VAR','Various')
	)
AS Source (
			[Id],
		    [GroupCode],
			[GroupText]
		  )

ON Source.[Id] = Target.[Id]

WHEN MATCHED THEN
UPDATE SET [GroupCode] = Source.[GroupCode],
		   [GroupText] = Source.[GroupText]

WHEN NOT MATCHED BY Target THEN
INSERT (
		[GroupCode],
		[GroupText]
		)
		VALUES
		(
		Source.[GroupCode],
		Source.[GroupText]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
