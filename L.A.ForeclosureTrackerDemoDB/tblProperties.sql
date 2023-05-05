CREATE TABLE [dbo].[tblProperties]
(
	[PropertyID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [PropertyRegisteredDate] DATE NOT NULL, 
    [PropertyStreetAddress] VARCHAR(200) NOT NULL DEFAULT '', 
    [PropertyCity] VARCHAR(50) NOT NULL DEFAULT '', 
    [PropertyState] CHAR(2) NOT NULL, 
    [PropertyZipCode] VARCHAR(11) NOT NULL DEFAULT '', 
    [PropertyTypeID] INT NOT NULL DEFAULT 0
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Date foreclosure was registered.  There should always be a value.',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'tblProperties',
    @level2type = N'COLUMN',
    @level2name = N'PropertyRegisteredDate'