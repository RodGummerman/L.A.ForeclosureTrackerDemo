CREATE TABLE [dbo].[tblPropertyManagementCompanies]
(
	[PropertyManagementCompanyID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [PropertyManagementCompanyName] VARCHAR(100) NOT NULL DEFAULT '', 
    [PropertyManagementCompanyContact] VARCHAR(100) NOT NULL DEFAULT '', 
    [PropertyManagementCompanyContactPhone] VARCHAR(12) NOT NULL DEFAULT '', 
    [PropertyManagementCompanyAddress] VARCHAR(200) NOT NULL DEFAULT ''
)
