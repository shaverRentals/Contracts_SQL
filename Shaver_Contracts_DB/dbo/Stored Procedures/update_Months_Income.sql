-- =============================================
-- Author:		Shaver
-- Create date: 10.15.2013
-- Description:	Updates Month Category in Income Table
-- =============================================
CREATE PROCEDURE [dbo].[update_Months_Income]

AS
BEGIN
	
	SET NOCOUNT ON;

	UPDATE Income
	SET Cat_Month = DATEADD(Month,DATEDIFF(Month,'20130101',Date_Income),'20130101')
	
	UPDATE Income
	SET Tax_Year_Income = YEAR(Date_Income);
END
