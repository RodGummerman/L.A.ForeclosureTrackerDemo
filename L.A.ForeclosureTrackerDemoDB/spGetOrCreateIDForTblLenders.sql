CREATE PROCEDURE [dbo].[spGetOrCreateIDForTblLenders]
	@LenderName varchar(100),
	@LenderContact varchar(100),
    @LenderContactPhone varchar(12),
    @LenderID int OUTPUT

AS

SET @LenderID = 0

SELECT
@LenderID = [LenderID]
FROM [dbo].[tblLenders]
WHERE [LenderName] = @LenderName

IF @LenderID = 0 BEGIN
    EXEC spInsertTblLenders @LenderName,
                            @LenderContact,
                            @LenderContactPhone,
                            @LenderID OUTPUT
END

RETURN 0
