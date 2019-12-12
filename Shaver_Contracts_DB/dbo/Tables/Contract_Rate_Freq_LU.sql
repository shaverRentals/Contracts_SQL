CREATE TABLE [dbo].[Contract_Rate_Freq_LU] (
    [KY_Rate_Freq]   INT          IDENTITY (1, 1) NOT NULL,
    [Desc_Rate_Freq] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Contract_Rate_Freq_LU] PRIMARY KEY CLUSTERED ([KY_Rate_Freq] ASC)
);

