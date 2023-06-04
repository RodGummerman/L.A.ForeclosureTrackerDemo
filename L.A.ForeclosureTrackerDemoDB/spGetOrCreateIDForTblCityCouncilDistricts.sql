CREATE PROCEDURE [dbo].[spGetOrCreateIDForTblCityCouncilDistricts]
	@CityCouncilDistrictID int,
	@CityCouncilDistrictName varchar(50)

AS

IF NOT EXISTS 
	(SELECT [CityCouncilDistrictID] FROM [dbo].[tblCityCouncilDistricts] WHERE [CityCouncilDistrictID] = @CityCouncilDistrictID) 
BEGIN

    EXEC spInsertTblCityCouncilDistricts @CityCouncilDistrictID,
                                            @CityCouncilDistrictName
END

RETURN 0
