CREATE TABLE [dbo].[Contract_Status_LU] (
    [KY_Status_Contract]   INT           IDENTITY (1, 1) NOT NULL,
    [Desc_Contract_Status] VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Contract_Status_LU] PRIMARY KEY CLUSTERED ([KY_Status_Contract] ASC)
);

