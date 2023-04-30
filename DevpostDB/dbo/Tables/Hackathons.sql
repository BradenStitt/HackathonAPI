CREATE TABLE [dbo].[Hackathons]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [HackathonName] NVARCHAR(255) NOT NULL,
	[Location] NVARCHAR(255),
    [StartDate] DATE,
    [EndDate] DATE,
    [URL] NVARCHAR(255)
)
