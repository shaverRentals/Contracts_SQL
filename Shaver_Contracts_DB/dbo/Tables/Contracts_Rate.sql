CREATE TABLE [dbo].[Contracts_Rate] (
    [KY_Rate]     INT   IDENTITY (1, 1) NOT NULL,
    [Amount_rate] MONEY NOT NULL,
    CONSTRAINT [PK_Contracts_Rate] PRIMARY KEY CLUSTERED ([KY_Rate] ASC)
);

