﻿MERGE INTO [etl].[TaskCode] AS Target
USING (VALUES
	        (1,    'TKAT'	,1),
		    (2,    '0070'	,66),
		    (3,    '0080'	,66),
		    (4,    '0090'	,66),
		    (5,    '0010'	,2),
		    (6,    'VEND'	,66),
		    (7,    '0180'	,22),
		    (8,    '0050'	,71),
		    (9,    '0020'	,10),
		    (10,   '0030'	,17),
		    (11,   '0290'	,58),
		    (12,   '0068'	,19),
		    (13,   '0270'	,22),
		    (14,   '0030'	,70),
		    (15,   'LPA'	,66),
		    (16,   'VLML'	,66),
		    (17,   'PSUB'	,66),
		    (18,   'VLPS'	,66),
		    (19,   '0260'	,22),
		    (20,   '0050'	,17),
		    (21,   '0030'	,11),
		    (22,   '0300'	,58),
		    (23,   '0045'	,17),
		    (24,   '0120'	,10),
		    (25,   'SIGN'	,66),
		    (26,   '0010'	,66),
		    (27,   '0100'	,70),
		    (28,   '0030'	,66),
		    (29,   '0010'	,11),
		    (30,   '0020'	,66),
		    (31,   '0075'	,3),
		    (32,   '0110'	,66),
		    (33,   '0120'	,66),
		    (34,   'INAC'	,66),
		    (35,   '0300'	,59),
		    (36,   '1090'	,24),
		    (37,   '0040'	,19),
		    (38,   'WAIT'	,66),
		    (39,   '0060'	,32),
		    (40,   '0010'	,13),
		    (41,   '0010'	,12),
		    (42,   '0021'	,19),
		    (43,   '0280'	,22),
		    (44,   '0110'	,21),
		    (45,   '0300'	,21),
		    (46,   '0220'	,58),
		    (47,   '0020'	,16),
		    (48,   '0310'	,21),
		    (49,   '0100'	,66),
		    (50,   '0010'	,7),
		    (51,   '0030'	,7),
		    (52,   '1080'	,24),
		    (53,   '0010'	,26),
		    (54,   '0210'	,58),
		    (55,   '0250'	,22),
		    (56,   '0040'	,17),
		    (57,   '0060'	,37),
		    (58,   '0010'	,16),
		    (59,   '0340'	,58),
		    (60,   '0030'	,19),
		    (61,   '0020'	,70),
		    (62,   '0035'	,66),
		    (63,   '0060'	,70),
		    (64,   '0150'	,10),
		    (65,   '0350'	,58),
		    (66,   '0040'	,66),
		    (67,   '0240'	,21),
		    (68,   '0010'	,10),
		    (69,   '0510'	,59),
		    (70,   '0060'	,66),
		    (71,   'PDES'	,66),
		    (72,   '0340'	,59),
		    (73,   '0050'	,66),
		    (74,   '0080'	,22),
		    (75,   '0010'	,54),
		    (76,   '0420'	,58),
		    (77,   '0080'	,19),
		    (78,   '0220'	,21),
		    (79,   '0020'	,29),
		    (80,   '0055'	,21),
		    (81,   '0020'	,9),
		    (82,   '0170'	,58),
		    (83,   '0010'	,19),
		    (84,   '0020'	,22),
		    (85,   '0070'	,70),
		    (86,   '0095'	,66),
		    (87,   '1060'	,24),
		    (88,   '0010'	,75),
		    (89,   '1040'	,24),
		    (90,   '0022'	,19),
		    (91,   '0027'	,19),
		    (92,   '0030'	,22),
		    (93,   'TOOL'	,66),
		    (94,   '0070'	,49),
		    (95,   '0150'	,19),
		    (96,   '0230'	,22),
		    (97,   '0390'	,58),
		    (98,   '0040'	,58),
		    (99,   '0016'	,11),
		    (100,  '0025'	,6),
		    (101,  '0070'	,46),
		    (102,  '0066'	,19),
		    (103,  '7'		,74),
		    (104,  '0190'	,21),
		    (105,  '0020'	,37),
		    (106,  '0510'	,58),
		    (107,  '0520'	,58),
		    (108,  '0070'	,19),
		    (109,  '0125'	,66),
		    (110,  '0020'	,21),
		    (111,  '0040'	,32),
		    (112,  '0050'	,70),
		    (113,  '0080'	,59),
		    (114,  '0080'	,58),
		    (115,  '0010'	,25),
		    (116,  '0020'	,6),
		    (117,  '0040'	,22),
		    (118,  '0070'	,45),
		    (119,  '0229'	,69),
		    (120,  '0220'	,22),
		    (121,  '0370'	,58),
		    (122,  '0140'	,10),
		    (123,  '0020'	,39),
		    (124,  '0028'	,19),
		    (125,  '0035'	,17),
		    (126,  '0040'	,41),
		    (127,  '0130'	,59),
		    (128,  '0050'	,19),
		    (129,  '0040'	,59),
		    (130,  '0160'	,10),
		    (131,  '0020'	,61),
		    (132,  '0065'	,66),
		    (133,  '0065'	,19),
		    (134,  '0130'	,10),
		    (135,  '0200'	,21),
		    (136,  '0050'	,21),
		    (137,  '0030'	,21),
		    (138,  '0023'	,19),
		    (139,  '0330'	,58),
		    (140,  '0015'	,11),
		    (141,  '0029'	,19),
		    (142,  '0050'	,22),
		    (143,  '0330'	,59),
		    (144,  '0070'	,59),
		    (145,  '0290'	,59),
		    (146,  '0060'	,61),
		    (147,  '0240'	,58),
		    (148,  '1025'	,24),
		    (149,  '1010'	,24),
		    (150,  '0130'	,71),
		    (151,  '0020'	,59),
		    (152,  '0250'	,58),
		    (153,  '0190'	,22),
		    (154,  '0030'	,69),
		    (155,  '0090'	,59),
		    (156,  '0080'	,70),
		    (157,  '0210'	,59),
		    (158,  '0090'	,21),
		    (159,  '0030'	,10),
		    (160,  '0520'	,59),
		    (161,  '0080'	,46),
		    (162,  '0020'	,20),
		    (163,  '0015'	,10),
		    (164,  '0090'	,22),
		    (165,  '0410'	,59),
		    (166,  '0490'	,58),
		    (167,  '0010'	,6),
		    (168,  '0030'	,16),
		    (169,  '0020'	,46),
		    (170,  '0410'	,58),
		    (171,  '0250'	,69),
		    (172,  '0140'	,69),
		    (173,  'P050'	,68),
		    (174,  '0090'	,47),
		    (175,  '0320'	,21),
		    (176,  '1030'	,24),
		    (177,  '0110'	,59),
		    (178,  '0140'	,22),
		    (179,  '0060'	,71),
		    (180,  '0080'	,64),
		    (181,  '0010'	,69),
		    (182,  '0010'	,70),
		    (183,  '0132'	,71),
		    (184,  '0260'	,69),
		    (185,  '0120'	,70),
		    (186,  '0200'	,22),
		    (187,  '0020'	,60),
		    (188,  '0290'	,21),
		    (189,  '0100'	,59),
		    (190,  '0055'	,19),
		    (191,  '0110'	,30),
		    (192,  '0030'	,58),
		    (193,  '0010'	,17),
		    (194,  '0060'	,35),
		    (195,  '0060'	,33),
		    (196,  '0010'	,60),
		    (197,  '0110'	,63),
		    (198,  'P020'	,68),
		    (199,  '0260'	,58),
		    (200,  '0040'	,11),
		    (201,  '0360'	,58),
		    (202,  '0020'	,7),
		    (203,  '1000'	,24),
		    (204,  '0110'	,70),
		    (205,  '0170'	,19),
		    (206,  '0380'	,58),
		    (207,  '0080'	,62),
		    (208,  '0050'	,58),
		    (209,  '0040'	,70),
		    (210,  '0240'	,22),
		    (211,  '0110'	,10),
		    (212,  '0100'	,58),
		    (213,  '0012'	,58),
		    (214,  '0030'	,71),
		    (215,  '0012'	,19),
		    (216,  '0220'	,59),
		    (217,  '0020'	,26),
		    (218,  '0140'	,58),
		    (219,  '0130'	,58),
		    (220,  '0010'	,21),
		    (221,  '0110'	,58),
		    (222,  '0020'	,8),
		    (223,  '0010'	,28),
		    (224,  '0020'	,58),
		    (225,  '0230'	,21),
		    (226,  '0070'	,58),
		    (227,  '0040'	,7),
		    (228,  '0050'	,33),
		    (229,  '0170'	,61),
		    (230,  '0040'	,9),
		    (231,  '0034'	,70),
		    (232,  '0505'	,58),
		    (233,  '0014'	,58),
		    (234,  '0280'	,21),
		    (235,  '0050'	,61),
		    (236,  '0430'	,58),
		    (237,  '0260'	,21),
		    (238,  '0060'	,58),
		    (239,  '0010'	,22),
		    (240,  '0090'	,58),
		    (241,  '0160'	,22),
		    (242,  '0010'	,9),
		    (243,  '0115'	,21),
		    (244,  '0570'	,58),
		    (245,  '0120'	,61),
		    (246,  '0150'	,58),
		    (247,  '0070'	,22),
		    (248,  '0550'	,59),
		    (249,  '3299'	,73),
		    (250,  '0140'	,61),
		    (251,  '0310'	,58),
		    (252,  '0322'	,69),
		    (253,  '0020'	,11),
		    (254,  '0035'	,10),
		    (255,  '0040'	,61),
		    (256,  '0080'	,21),
		    (257,  '0010'	,57),
		    (258,  '0010'	,55),
		    (259,  '1100'	,24),
		    (260,  '0030'	,9),
		    (261,  '0150'	,21),
		    (262,  '0060'	,7),
		    (263,  '0090'	,7),
		    (264,  '0300'	,69),
		    (265,  '0030'	,26),
		    (266,  '0040'	,21),
		    (267,  '0050'	,32),
		    (268,  '0070'	,21),
		    (269,  '0050'	,69),
		    (270,  '0165'	,58),
		    (271,  '0250'	,21),
		    (272,  '0010'	,40),
		    (273,  '0060'	,42),
		    (274,  '0050'	,42),
		    (275,  '0030'	,8),
		    (276,  '0010'	,8),
		    (277,  '0010'	,48),
		    (278,  '0160'	,58),
		    (279,  '0280'	,58),
		    (280,  '0500'	,58),
		    (281,  'AC10'	,4),
		    (282,  '0010'	,15),
		    (283,  '0010'	,14),
		    (284,  '0100'	,21),
		    (285,  '0440'	,58),
		    (286,  '0430'	,72),
		    (287,  '0700'	,72),
		    (288,  '0100'	,22),
		    (289,  '0010'	,38),
		    (290,  '0080'	,44),
		    (291,  '0090'	,61),
		    (292,  'AC25'	,5),
		    (293,  '0130'	,22),
		    (294,  '0270'	,58),
		    (295,  '0540'	,58),
		    (296,  '0040'	,42),
		    (297,  '0010'	,50),
		    (298,  '0010'	,58),
		    (299,  '0060'	,50),
		    (300,  '0080'	,45),
		    (301,  '0020'	,47),
		    (302,  '0180'	,21),
		    (303,  '0040'	,33),
		    (304,  '0170'	,22),
		    (305,  '0480'	,58),
		    (306,  '0040'	,14),
		    (307,  '0470'	,58),
		    (308,  '0028'	,10),
		    (309,  '0015'	,19),
		    (310,  '0060'	,34),
		    (311,  '0090'	,52),
		    (312,  '0070'	,67),
		    (313,  '0020'	,32),
		    (314,  '0025'	,10),
		    (315,  '0045'	,37),
		    (316,  '0015'	,8),
		    (317,  '0070'	,37),
		    (318,  '0200'	,58),
		    (319,  '0020'	,45),
		    (320,  '0010'	,31),
		    (321,  '0010'	,42),
		    (322,  '0650'	,72),
		    (323,  '0220'	,61),
		    (324,  '0090'	,69),
		    (325,  '0080'	,61),
		    (326,  '1050'	,24),
		    (327,  '0020'	,53),
		    (328,  '0130'	,61),
		    (329,  '0110'	,22),
		    (330,  '0060'	,18),
		    (331,  '0300'	,30),
		    (332,  '1150'	,24),
		    (333,  '0130'	,69),
		    (334,  '0060'	,14),
		    (335,  '0030'	,27),
		    (336,  '0030'	,18),
		    (337,  '0078'	,19),
		    (338,  '0200'	,10),
		    (339,  '0160'	,21),
		    (340,  '0150'	,69),
		    (341,  '0050'	,18),
		    (342,  '0320'	,30),
		    (343,  '0180'	,58),
		    (344,  '0050'	,39),
		    (345,  '0080'	,47),
		    (346,  '0010'	,23),
		    (347,  '0030'	,33),
		    (348,  '0050'	,51),
		    (349,  '0080'	,39),
		    (350,  '0040'	,34),
		    (351,  '0030'	,61),
		    (352,  '0100'	,3),
		    (353,  '0050'	,27),
		    (354,  '0040'	,65),
		    (355,  '0010'	,56),
		    (356,  '0090'	,51),
		    (357,  '0085'	,19),
		    (358,  '0020'	,51),
		    (359,  '0100'	,27),
		    (360,  '0100'	,18),
		    (361,  '0070'	,44),
		    (362,  '0010'	,44),
		    (363,  '0030'	,37),
		    (364,  '0350'	,30),
		    (365,  '0050'	,37),
		    (366,  '0070'	,43),
		    (367,  '0080'	,43),
		    (368,  '0070'	,36),
		    (369,  '0010'	,37),
		    (370,  '0080'	,36),
		    (371,  '0010'	,43),
		    (372,  '0010'	,41),
		    (373,  '0060'	,43),
		    (374,  '0050'	,43),
		    (375,  '0050'	,35),
		    (376,  '0200'	,61),
		    (377,  '0010'	,27),
		    (378,  '0030'	,14)
	)
AS Source (
			[Id],
			[TaskCode],
		    [GroupCode]
		  )

ON Source.[Id] = Target.[Id]

WHEN MATCHED THEN
UPDATE SET [TaskCode]  = Source.[TaskCode],
		   [GroupCode] = Source.[GroupCode]


WHEN NOT MATCHED BY Target THEN
INSERT (
		[TaskCode],
		[GroupCode]
		)
		VALUES
		(
		[TaskCode],
		[GroupCode]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
