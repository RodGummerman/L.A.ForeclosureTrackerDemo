CREATE TABLE [dbo].[tblLenders]
(
	[LenderID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [LenderName] VARCHAR(100) NOT NULL DEFAULT '', 
    [LenderContact] VARCHAR(100) NOT NULL DEFAULT '', 
    [LenderContactPhone] VARCHAR(12) NOT NULL DEFAULT ''
)
