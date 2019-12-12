CREATE TABLE [dbo].[Deliverable_Status_Lu] (
    [KY_Status_Deliverable] INT           IDENTITY (1, 1) NOT NULL,
    [Desc_Deliverable]      VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Deliverable_Status_Lu] PRIMARY KEY CLUSTERED ([KY_Status_Deliverable] ASC)
);

