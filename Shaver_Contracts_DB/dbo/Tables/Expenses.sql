CREATE TABLE [dbo].[Expenses] (
    [KY_Expense]          INT           IDENTITY (1, 1) NOT NULL,
    [KY_Contractee]       INT           NOT NULL,
    [Amount]              MONEY         NOT NULL,
    [Date_Expense]        DATE          NOT NULL,
    [Description_Expense] VARCHAR (MAX) NULL,
    [Img_Path_Expense]    VARCHAR (MAX) NULL,
    [KY_Expense_Type]     INT           NOT NULL,
    [Tax_Year_Expense]    VARCHAR (4)   NULL,
    CONSTRAINT [PK_Expenses] PRIMARY KEY CLUSTERED ([KY_Expense] ASC),
    CONSTRAINT [FK_Expenses_Contractee] FOREIGN KEY ([KY_Contractee]) REFERENCES [dbo].[Contractee] ([KY_Contractee]),
    CONSTRAINT [FK_Expenses_Expense_Type_LU] FOREIGN KEY ([KY_Expense_Type]) REFERENCES [dbo].[Expense_Type_LU] ([KY_Expense_Type])
);

