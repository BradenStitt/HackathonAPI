CREATE PROCEDURE [dbo].[spHackathons_Delete]
	@Id int
AS
begin
	delete
	from dbo.Hackathons
	where Id = @Id;
end
