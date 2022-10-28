CREATE VIEW [dbo].[View_Invoice]
	AS 

	SELECT      TOP (100) PERCENT dbo.Invoice_Header.KY_Invoice_Header, dbo.Invoice_Header.Date_Invoice_Created, dbo.Invoice_Header.Date_Invoice_Begin, dbo.Invoice_Header.Date_Invoice_End, dbo.Invoice_Header.Desc_Invoice, dbo.Contracts.Name_Contract, dbo.Contracts.Desc_Contract_Services, 
                   dbo.Contractee.Name_Contractee, dbo.Contractee.Email_Contractee, dbo.Contractee.Address_Contractee_Street, dbo.Contractee.Address_Contractee_City, dbo.Contractee.Address_Contractee_State, dbo.Contractee.Adress_Contractee_Zip, dbo.Contracts_Rate.Amount_rate, 
                   dbo.Contracts_Hours.Date_Hours_Workd, dbo.Contracts_Hours.Contracts_Hours, dbo.Contracts_Hours.Desc_Contracts_Hours, dbo.Contracts_Hours.KY_Contracts_Hours, dbo.Contracts.KY_Contracts, dbo.Invoice_Header.Invoice_Complete
FROM         dbo.Contractee INNER JOIN
                   dbo.Contracts ON dbo.Contractee.KY_Contractee = dbo.Contracts.KY_Contractee INNER JOIN
                   dbo.Contracts_Hours ON dbo.Contracts.KY_Contracts = dbo.Contracts_Hours.KY_Contracts INNER JOIN
                   dbo.Contracts_Rate ON dbo.Contracts.KY_Rate = dbo.Contracts_Rate.KY_Rate INNER JOIN
                   dbo.Invoice_Header ON dbo.Contracts.KY_Contracts = dbo.Invoice_Header.KY_Contracts AND dbo.Contracts_Hours.Date_Hours_Workd >= dbo.Invoice_Header.Date_Invoice_Begin AND dbo.Contracts_Hours.Date_Hours_Workd <= dbo.Invoice_Header.Date_Invoice_End
ORDER BY dbo.Invoice_Header.KY_Invoice_Header, dbo.Contracts_Hours.Date_Hours_Workd
