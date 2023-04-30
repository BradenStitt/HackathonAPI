CREATE PROCEDURE [dbo].[spHackathons_Insert]
	@HackathonName nvarchar(255),
	@HackathonLocation nvarchar(255),
	@HackathonStartDate date,
	@HackathonEndDate date,
	@HackathonURL nvarchar(255)
	
AS
begin
	insert into dbo.Hackathons (HackathonName, HackathonLocation, HackathonStartDate, HackathonEndDate, HackathonURL)
	values (@HackathonName, @HackathonLocation, @HackathonStartDate, @HackathonEndDate, @HackathonURL);
end
