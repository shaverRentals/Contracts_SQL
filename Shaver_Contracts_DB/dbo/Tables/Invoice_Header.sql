CREATE TABLE [dbo].[Invoice_Header] (
    [KY_Invoice_Header]    INT           IDENTITY (1, 1) NOT NULL,
    [KY_Contracts]         INT           NOT NULL,
    [Date_Invoice_Created] DATE          NOT NULL,
    [Date_Invoice_Begin]   DATE          NOT NULL,
    [Date_Invoice_End]     DATE          NOT NULL,
    [Desc_Invoice]         VARCHAR (MAX) NOT NULL,
    [Invoice_Complete]     BIT           NULL,
    CONSTRAINT [PK_Invoice_Header] PRIMARY KEY CLUSTERED ([KY_Invoice_Header] ASC),
    CONSTRAINT [FK_Invoice_Header_Contracts] FOREIGN KEY ([KY_Contracts]) REFERENCES [dbo].[Contracts] ([KY_Contracts])
);

