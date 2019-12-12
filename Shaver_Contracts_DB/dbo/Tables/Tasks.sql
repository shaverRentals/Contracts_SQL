--LETS ADD A COMMENT
CREATE TABLE [dbo].[Tasks] (
    [KY_Tasks]       INT           IDENTITY (1, 1) NOT NULL,
    [KY_Contracts]   INT           NOT NULL,
    [KY_Task_Status] INT           NOT NULL,
    [Desc_Tasks]     VARCHAR (MAX) NOT NULL,
    [Date_Due_task]  DATE          NULL,
    [Notes_Task]     VARCHAR (MAX) NULL,
    CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED ([KY_Tasks] ASC),
    CONSTRAINT [FK_Tasks_Contracts] FOREIGN KEY ([KY_Contracts]) REFERENCES [dbo].[Contracts] ([KY_Contracts]),
    CONSTRAINT [FK_Tasks_Task_Status_LU] FOREIGN KEY ([KY_Task_Status]) REFERENCES [dbo].[Task_Status_LU] ([KY_Task_Status])
);

