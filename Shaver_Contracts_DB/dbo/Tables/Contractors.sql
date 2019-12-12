CREATE TABLE [dbo].[Contractors] (
    [KY_Contractor]              INT           IDENTITY (1, 1) NOT NULL,
    [Primary_Contact_Contractor] VARCHAR (MAX) NULL,
    [Name_Contractor]            VARCHAR (MAX) NULL,
    [Phone_Contractor]           VARCHAR (50)  NULL,
    [Email_Contractor]           VARCHAR (MAX) NULL,
    [Address_Contractor]         VARCHAR (MAX) NULL,
    [Adress_Contractor_2]        VARCHAR (50)  NULL,
    [City_Contractor]            VARCHAR (50)  NULL,
    [State_Contractor]           VARCHAR (50)  NULL,
    [Zip_Contractor]             VARCHAR (50)  NULL,
    [Notes_Contractor]           VARCHAR (MAX) NULL,
    CONSTRAINT [PK_Contractors] PRIMARY KEY CLUSTERED ([KY_Contractor] ASC)
);

