CREATE PROCEDURE [dbo].[spGetOrCreateIDForTblPropertyManagementCompanies]
	@PropertyManagementCompanyName varchar(100),
	@PropertyManagementCompanyContact varchar(100),
    @PropertyManagementCompanyContactPhone varchar(12),
    @PropertyManagementCompanyAddress varchar(200),
    @PropertyManagementCompanyID int OUTPUT

AS

SET @PropertyManagementCompanyID = 0

SELECT
@PropertyManagementCompanyID = [PropertyManagementCompanyID]
FROM [dbo].[tblPropertyManagementCompanies]
WHERE [PropertyManagementCompanyName] = @PropertyManagementCompanyName
AND [PropertyManagementCompanyAddress] = @PropertyManagementCompanyAddress

IF @PropertyManagementCompanyID = 0 BEGIN
    EXEC spInsertTblPropertyManagementCompanies @PropertyManagementCompanyName,
                                    @PropertyManagementCompanyContact,
                                    @PropertyManagementCompanyContactPhone,
                                    @PropertyManagementCompanyAddress,
                                    @PropertyManagementCompanyID OUTPUT
END

RETURN 0
