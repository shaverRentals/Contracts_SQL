CREATE TABLE [dbo].[Expense_Type_LU] (
    [KY_Expense_Type] INT           IDENTITY (1, 1) NOT NULL,
    [Expense_Type]    VARCHAR (MAX) NULL,
    [IRS_Number]      VARCHAR (12)  NULL,
    CONSTRAINT [PK_Expense_Type_LU] PRIMARY KEY CLUSTERED ([KY_Expense_Type] ASC)
);

