﻿CREATE TABLE [dbo].[Quarter_LU]
(
	[KY_Quarter_LU]  INT IDENTITY(1,1) NOT NULL, 
    [Desc_quarter] VARCHAR(24) NULL,
	CONSTRAINT[PK_Quarter_LU] PRIMARY KEY CLUSTERED (KY_Quarter_LU ASC)
)
