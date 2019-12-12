CREATE TABLE [dbo].[Contractee] (
    [KY_Contractee]             INT           IDENTITY (1, 1) NOT NULL,
    [Name_Contractee]           VARCHAR (MAX) NOT NULL,
    [Email_Contractee]          VARCHAR (50)  NOT NULL,
    [Address_Contractee_Street] VARCHAR (200) NOT NULL,
    [Address_Contractee_City]   VARCHAR (90)  NOT NULL,
    [Address_Contractee_State]  NCHAR (10)    NOT NULL,
    [Adress_Contractee_Zip]     NCHAR (10)    NOT NULL,
    CONSTRAINT [PK_Contractee] PRIMARY KEY CLUSTERED ([KY_Contractee] ASC)
);

