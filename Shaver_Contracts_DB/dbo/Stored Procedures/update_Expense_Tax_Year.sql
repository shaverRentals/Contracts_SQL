-- =============================================
-- Author:		Shaver
-- Create date: 10.3.2013
-- Description:	Updates Month Category in Contracts_Hours Table
-- =============================================
CREATE PROCEDURE [dbo].[update_Expense_Tax_Year]

AS
BEGIN
	
	SET NOCOUNT ON;

	UPDATE Expenses
	SET Tax_Year_Expense = YEAR(Date_Expense); 
END