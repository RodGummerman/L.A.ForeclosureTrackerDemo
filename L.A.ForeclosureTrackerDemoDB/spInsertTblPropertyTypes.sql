CREATE PROCEDURE [dbo].[spInsertTblPropertyTypes]
	@PropertyTypeDescription varchar(50),
    @PropertyTypeID int OUTPUT
AS

INSERT INTO [dbo].[tblPropertyTypes]
           ([PropertyTypeDescription])
     VALUES
           (@PropertyTypeDescription)

SELECT @PropertyTypeID = SCOPE_IDENTITY()

RETURN 0
