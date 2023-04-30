CREATE PROCEDURE [dbo].[spHackathons_Get]
	@Id int
AS
begin
	SELECT *
	from dbo.Hackathons
	where Id = @Id;
end

