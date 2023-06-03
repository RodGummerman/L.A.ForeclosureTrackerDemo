CREATE PROCEDURE [dbo].[spInsertTblPropertyManagementCompanies]
	@PropertyManagementCompanyName varchar(100),
	@PropertyManagementCompanyContact varchar(100),
    @PropertyManagementCompanyContactPhone varchar(12),
    @PropertyManagementCompanyAddress varchar(200),
    @PropertyManagementCompanyID int OUTPUT

AS

INSERT INTO [dbo].[tblPropertyManagementCompanies]
           ([PropertyManagementCompanyName]
           ,[PropertyManagementCompanyContact]
           ,[PropertyManagementCompanyContactPhone]
           ,[PropertyManagementCompanyAddress])
     VALUES
           (@PropertyManagementCompanyName
           ,@PropertyManagementCompanyContact
           ,@PropertyManagementCompanyContactPhone
           ,@PropertyManagementCompanyAddress)

SELECT @PropertyManagementCompanyID = SCOPE_IDENTITY()

RETURN 0
