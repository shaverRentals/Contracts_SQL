CREATE TABLE [dbo].[Version] (
    [KY_Version]     INT           IDENTITY (1, 1) NOT NULL,
    [Number_Version] VARCHAR (MAX) NOT NULL,
    [Date_Version]   DATE          NOT NULL,
    [Desc_Version]   VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Version] PRIMARY KEY CLUSTERED ([KY_Version] ASC)
);

