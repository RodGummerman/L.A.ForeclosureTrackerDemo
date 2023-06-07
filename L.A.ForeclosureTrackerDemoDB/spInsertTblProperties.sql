CREATE PROCEDURE [dbo].[spInsertTblProperties]
	@PropertyAssessorParcelNumber bigint,
	@PropertyTypeID int,
    @PropertyStreetAddress varchar(200),
    @PropertyCity varchar(50),
    @PropertyState char(2),
    @PropertyZipCode varchar(11),
    @PropertyLongitude varchar(20),
    @PropertyLatitude varchar(20),
    @PropertyPointOnMap varchar(50),
    @CityCouncilDistrictID int,
    @PropertyForeclosureRegisteredDate date,
    @LenderID int,
    @PropertyManagementCompanyID int,
    @PropertyID int OUTPUT

AS

INSERT INTO [dbo].[tblProperties]
           ([PropertyAssessorParcelNumber]
           ,[PropertyTypeID]
           ,[PropertyStreetAddress]
           ,[PropertyCity]
           ,[PropertyState]
           ,[PropertyZipCode]
           ,[PropertyLongitude]
           ,[PropertyLatitude]
           ,[PropertyPointOnMap]
           ,[CityCouncilDistrictID]
           ,[PropertyForeclosureRegisteredDate]
           ,[LenderID]
           ,[PropertyManagementCompanyID])
     VALUES
           (@PropertyAssessorParcelNumber
           ,@PropertyTypeID
           ,@PropertyStreetAddress
           ,@PropertyCity
           ,@PropertyState
           ,@PropertyZipCode
           ,@PropertyLongitude
           ,@PropertyLatitude
           ,@PropertyPointOnMap
           ,@CityCouncilDistrictID
           ,@PropertyForeclosureRegisteredDate
           ,@LenderID
           ,@PropertyManagementCompanyID)

SELECT @PropertyID = SCOPE_IDENTITY()

RETURN 0
