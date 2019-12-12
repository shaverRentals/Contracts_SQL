CREATE TABLE [dbo].[Report_Types] (
    [KY_Report_Type] INT           IDENTITY (1, 1) NOT NULL,
    [DS_Report_Type] VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Report_Types] PRIMARY KEY CLUSTERED ([KY_Report_Type] ASC)
);

