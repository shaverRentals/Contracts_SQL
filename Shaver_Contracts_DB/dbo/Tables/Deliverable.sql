CREATE TABLE [dbo].[Deliverable] (
    [KY_Deliverable]          INT           IDENTITY (1, 1) NOT NULL,
    [KY_Contracts]            INT           NOT NULL,
    [Name_Deliverable]        VARCHAR (MAX) NOT NULL,
    [Date_Deliverable_Due]    DATE          NULL,
    [Total_Hours_Deliverable] INT           NULL,
    [Notes_Deliverable]       VARCHAR (MAX) NULL,
    [KY_Status_Deliverable]   INT           NOT NULL,
    CONSTRAINT [PK_Deliverable] PRIMARY KEY CLUSTERED ([KY_Deliverable] ASC),
    CONSTRAINT [FK_Deliverable_Contracts] FOREIGN KEY ([KY_Contracts]) REFERENCES [dbo].[Contracts] ([KY_Contracts]),
    CONSTRAINT [FK_Deliverable_Deliverable_Status_Lu] FOREIGN KEY ([KY_Status_Deliverable]) REFERENCES [dbo].[Deliverable_Status_Lu] ([KY_Status_Deliverable])
);

