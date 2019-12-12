CREATE TABLE [dbo].[Estimated_Tax_payments]
(
	[KY_Estimated_Taxes] INT IDENTITY(1,1) NOT NULL, 
    [Date_Est_Tax_Paid] DATE NULL, 
    [Amount_Estimated_Tax] MONEY NULL, 
    [KY_Quarter_LU] INT NULL, 
    [Tax_Year] VARCHAR(4) NULL,
	[Img_Path_Est_Tax] VARCHAR(MAX),
	CONSTRAINT [PK_Estimated_Taxes] PRIMARY KEY CLUSTERED (KY_Estimated_Taxes),
	CONSTRAINT FK_Quarter_LU FOREIGN KEY(KY_Quarter_LU)
	REFERENCES Quarter_LU (KY_Quarter_LU)
);

