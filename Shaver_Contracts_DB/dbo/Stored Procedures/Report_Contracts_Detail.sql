
CREATE PROCEDURE [dbo].[Report_Contracts_Detail]

	
AS
BEGIN
	
	SET NOCOUNT ON;
	WITH H AS
(
SELECT KY_Contracts, SUM(Contracts_Hours) AS ContractHours
FROM   Contracts_Hours
GROUP BY KY_Contracts
),

I AS
(
SELECT KY_Contracts, SUM(Amount_Income) AS ContractIncome
FROM   Income
GROUP BY KY_Contracts
),

C AS
(
SELECT KY_Contracts
	   ,Name_Contract
	   ,Hours_Contract_Total 
	   ,Money_Contract_Total
	   ,Name_Contractor
	   ,Contract_Status_LU.Desc_Contract_Status
	   ,Date_Contract_Begin
	   ,Date_Contract_End
	   ,Amount_rate
FROM   Contractors INNER JOIN Contracts 
	   ON Contracts.KY_Contractor = Contractors.KY_Contractor 
	   INNER JOIN Contract_Status_LU
	   ON Contracts.KY_Status_Contract = Contract_Status_LU.KY_Status_Contract
	  INNER JOIN Contracts_Rate
	  ON Contracts_Rate.KY_Rate =Contracts.KY_Rate
)

SELECT  C.Name_Contract
		,C.KY_Contracts
		,C.Hours_Contract_Total
		,C.Money_Contract_Total
	    ,C.Name_Contractor
		,C.Desc_Contract_Status
		,C.Date_Contract_Begin
		,C.Date_Contract_End
		,Amount_rate
	    ,ISNULL(H.contractHours, 0) AS Contract_Hours
	    ,ISNULL(I.ContractIncome,0) AS Contract_Income
FROM H  LEFT JOIN 
  I ON I.KY_Contracts = H.KY_Contracts
   LEFT JOIN 
  C ON C.KY_Contracts = H.KY_Contracts
WHERE C.Desc_Contract_Status = 'OPEN'

   
END
