CREATE TABLE [dbo].[Contracts_Hours] (
    [KY_Contracts_Hours]   INT           IDENTITY (1, 1) NOT NULL,
    [KY_Contracts]         INT           NOT NULL,
    [Date_Hours_Workd]     DATE          NOT NULL,
    [Contracts_Hours]      FLOAT (53)    NOT NULL,
    [Desc_Contracts_Hours] VARCHAR (MAX) NOT NULL,
    [Cat_Month]            DATE          NULL,
    CONSTRAINT [PK_Task_Hours] PRIMARY KEY CLUSTERED ([KY_Contracts_Hours] ASC),
    CONSTRAINT [FK_Contracts_Hours_Contracts] FOREIGN KEY ([KY_Contracts]) REFERENCES [dbo].[Contracts] ([KY_Contracts])
);

