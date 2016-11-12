CREATE PROCEDURE [dbo].[ChangeTrackPriceByFactor]
	@TrackID int,
	@Factor NUMERIC(10, 2)
AS
	UPDATE Track SET UnitPrice *= @Factor WHERE Track_Id = @TrackID;

RETURN 0
