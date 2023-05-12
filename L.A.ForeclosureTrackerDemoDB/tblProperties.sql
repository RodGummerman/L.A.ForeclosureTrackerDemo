CREATE TABLE [dbo].[tblProperties]
(
	[PropertyID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [PropertyAssessorParcelNumber] BIGINT NOT NULL DEFAULT 0,
    [PropertyTypeID] INT NOT NULL DEFAULT 0,
    [PropertyStreetAddress] VARCHAR(200) NOT NULL DEFAULT '', 
    [PropertyCity] VARCHAR(50) NOT NULL DEFAULT '', 
    [PropertyState] CHAR(2) NOT NULL, 
    [PropertyZipCode] VARCHAR(11) NOT NULL DEFAULT '', 
    [PropertyLongitude] DECIMAL(9,5) NOT NULL DEFAULT 0.0, 
    [PropertyLatitude] DECIMAL(9,5) NOT NULL DEFAULT 0.0, 
    [PropertyPointOnMap] VARCHAR(50) NOT NULL DEFAULT '', 
    [CityCouncilDistrictID] INT NOT NULL DEFAULT 0, 
    [PropertyForeclosureRegisteredDate] DATE NOT NULL, 
    [LenderID] INT NOT NULL DEFAULT 0, 
    [PropertyManagementCompanyID] INT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_tblProperties_tblPropertyTypes] FOREIGN KEY ([PropertyTypeID]) REFERENCES [tblPropertyTypes]([PropertyTypeID]),
    CONSTRAINT [FK_tblProperties_tblLenders] FOREIGN KEY ([LenderID]) REFERENCES [tblLenders]([LenderID]),
    CONSTRAINT [FK_tblProperties_tblPropertyManagementCompanies] FOREIGN KEY ([PropertyManagementCompanyID]) REFERENCES [tblPropertyManagementCompanies]([PropertyManagementCompanyID])
)

GO
