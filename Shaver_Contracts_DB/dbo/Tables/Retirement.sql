CREATE TABLE [dbo].[Retirement] (
    [KY_Retirement]         INT         IDENTITY (1, 1) NOT NULL,
    [Date_Contribution]     DATE        NULL,
    [Amount_Contribution]   MONEY       NULL,
    [KY_Retirement_Account] INT         NULL,
    [Tax_Year]              VARCHAR (4) NULL,
    CONSTRAINT [PK_Retirement] PRIMARY KEY CLUSTERED ([KY_Retirement] ASC),
    CONSTRAINT [FK_Retirement_Retirement_Account_LU] FOREIGN KEY ([KY_Retirement_Account]) REFERENCES [dbo].[Retirement_Account_LU] ([KY_Retirement_Account])
);

