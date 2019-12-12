CREATE PROCEDURE [dbo].[TEST_ERROR]
	@ReturnValue int OUTPUT
AS

BEGIN
	
	SET NOCOUNT ON;
	SET @ReturnValue = @@ERROR 
   print  @ReturnValue 
END
