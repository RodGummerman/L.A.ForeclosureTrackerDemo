CREATE PROCEDURE [dbo].[spGetOrCreateIDForTblPropertyTypes]
	@PropertyTypeDescription varchar(50),
    @PropertyTypeID int OUTPUT
AS

SET @PropertyTypeID = 0

SELECT
@PropertyTypeID = [PropertyTypeID]
FROM [dbo].[tblPropertyTypes]
WHERE [PropertyTypeDescription] = @PropertyTypeDescription

IF @PropertyTypeID = 0 BEGIN
    EXEC spInsertTblPropertyTypes @PropertyTypeDescription,
                                    @PropertyTypeID OUTPUT
END

RETURN 0
