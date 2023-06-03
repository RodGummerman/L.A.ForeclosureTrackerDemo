CREATE PROCEDURE [dbo].[spInsertTblLenders]
	@LenderName varchar(100),
	@LenderContact varchar(100),
    @LenderContactPhone varchar(12),
    @LenderID int OUTPUT

AS

INSERT INTO [dbo].[tblLenders]
           ([LenderName]
           ,[LenderContact]
           ,[LenderContactPhone])
     VALUES
           (@LenderName
           ,@LenderContact
           ,@LenderContactPhone)

SELECT @LenderID = SCOPE_IDENTITY()

RETURN 0
