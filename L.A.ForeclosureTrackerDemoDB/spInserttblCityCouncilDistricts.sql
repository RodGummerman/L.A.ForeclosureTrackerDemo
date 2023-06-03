CREATE PROCEDURE [dbo].[spInsertTblCityCouncilDistricts]
	@CityCouncilDistrictID int,
	@CityCouncilDistrictName varchar(50)

AS

INSERT INTO [dbo].[tblCityCouncilDistricts]
           ([CityCouncilDistrictID]
           ,[CityCouncilDistrictName])
     VALUES
           (@CityCouncilDistrictID
           ,@CityCouncilDistrictName)

RETURN 0
