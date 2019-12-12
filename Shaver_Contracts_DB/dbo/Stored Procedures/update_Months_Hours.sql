-- =============================================
-- Author:		Shaver
-- Create date: 10.3.2013
-- Description:	Updates Month Category in Contracts_Hours Table
-- =============================================
CREATE PROCEDURE [dbo].[update_Months_Hours]

AS
BEGIN
	
	SET NOCOUNT ON;

	UPDATE Contracts_Hours
	SET Cat_Month = DATEADD(Month,DATEDIFF(Month,'20130101',Date_Hours_Workd),'20130101')
END