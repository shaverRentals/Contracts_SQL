CREATE TABLE [dbo].[Task_Status_LU] (
    [KY_Task_Status]   INT           IDENTITY (1, 1) NOT NULL,
    [Desc_Task_Status] VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Task_Status_LU] PRIMARY KEY CLUSTERED ([KY_Task_Status] ASC)
);

