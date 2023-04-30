CREATE PROCEDURE [dbo].[spDevpost_GetAll]

AS
begin
	SELECT * 
	from dbo.Hackathons;
end
