CREATE TABLE [dbo].[Income] (
    [KY_Income]           INT           IDENTITY (1, 1) NOT NULL,
    [KY_Contracts]        INT           NOT NULL,
    [Date_Income]         DATE          NOT NULL,
    [Amount_Income]       MONEY         NOT NULL,
    [Check_Number_Income] VARCHAR (12)  NULL,
    [Tax_Year_Income]     INT           NULL,
    [Img_Path_Check]      VARCHAR (MAX) NULL,
    [KY_Invoice_Header]   INT           NULL,
    [Cat_Month]           DATE          NULL,
    CONSTRAINT [PK_Income] PRIMARY KEY CLUSTERED ([KY_Income] ASC),
    CONSTRAINT [FK_Income_Contracts] FOREIGN KEY ([KY_Contracts]) REFERENCES [dbo].[Contracts] ([KY_Contracts])
);

