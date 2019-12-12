CREATE TABLE [dbo].[Contracts] (
    [KY_Contracts]           INT           IDENTITY (1, 1) NOT NULL,
    [KY_Contractor]          INT           NOT NULL,
    [Name_Contract]          VARCHAR (50)  NOT NULL,
    [Date_Contract_Begin]    DATE          NOT NULL,
    [Date_Contract_End]      DATE          NOT NULL,
    [Hours_Contract_Total]   INT           NOT NULL,
    [Money_Contract_Total]   MONEY         NOT NULL,
    [KY_Status_Contract]     INT           NOT NULL,
    [Contract_Notes]         VARCHAR (MAX) NULL,
    [Desc_Contract_Services] VARCHAR (MAX) NULL,
    [KY_Rate]                INT           NOT NULL,
    [KY_Contractee]          INT           NOT NULL,
    [KY_Rate_Freq]           INT           NOT NULL,
    CONSTRAINT [PK_Contracts] PRIMARY KEY CLUSTERED ([KY_Contracts] ASC)
);

