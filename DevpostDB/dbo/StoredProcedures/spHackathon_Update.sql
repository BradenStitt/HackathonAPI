CREATE PROCEDURE [dbo].[spHackathon_Update]
	@Id int,
	@HackathonName nvarchar(255),
	@HackathonLocation nvarchar(255),
	@HackathonStartDate nvarchar(50),
	@HackathonEndDate nvarchar(50),
	@HackathonURL nvarchar(255)
AS
begin
	update dbo.Hackathons
	set HackathonName = @HackathonName, 
	HackathonLocation = @HackathonLocation,
	HackathonStartDate = @HackathonStartDate,
	HackathonEndDate = @HackathonEndDate,
	HackathonURL = @HackathonURL
	where Id = @Id;
end
