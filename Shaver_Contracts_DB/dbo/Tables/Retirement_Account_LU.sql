CREATE TABLE [dbo].[Retirement_Account_LU] (
    [KY_Retirement_Account]   INT           IDENTITY (1, 1) NOT NULL,
    [Desc_Retirement_Account] VARCHAR (MAX) NOT NULL,
    CONSTRAINT [KY_Retirement_Account] PRIMARY KEY CLUSTERED ([KY_Retirement_Account] ASC)
);

