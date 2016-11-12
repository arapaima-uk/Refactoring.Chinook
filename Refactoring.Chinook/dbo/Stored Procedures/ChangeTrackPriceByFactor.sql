CREATE PROCEDURE [dbo].[ChangeTrackPriceByFactor]
	@TrackID int,
	@Factor NUMERIC(10, 2)
AS
	UPDATE Track SET UnitPrice *= @Factor WHERE TrackId = @TrackID;

RETURN 0
