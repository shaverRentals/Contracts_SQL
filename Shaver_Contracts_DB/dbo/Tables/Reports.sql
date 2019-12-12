CREATE TABLE [dbo].[Reports] (
    [KY_Report]       INT           IDENTITY (1, 1) NOT NULL,
    [KY_Report_Type]  INT           NOT NULL,
    [Name_report]     VARCHAR (MAX) NOT NULL,
    [Path_Report]     VARCHAR (MAX) NOT NULL,
    [Email_Subject]   VARCHAR (MAX) NOT NULL,
    [Email_Body]      VARCHAR (MAX) NOT NULL,
    [FileName_Report] VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED ([KY_Report] ASC),
    CONSTRAINT [FK_Reports_Report_Types] FOREIGN KEY ([KY_Report_Type]) REFERENCES [dbo].[Report_Types] ([KY_Report_Type])
);

