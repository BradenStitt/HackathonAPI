CREATE TABLE [dbo].[Hackathons]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
	[HackathonName] NVARCHAR(255) NOT NULL,
	[HackathonLocation] NVARCHAR(255) NOT NULL,
	[HackathonStartDate] DATE NOT NULL,
	[HackathonEndDate] DATE NOT NULL,
	[HackathonURL] NVARCHAR(255) NOT NULL
)
