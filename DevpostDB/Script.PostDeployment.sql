if not exists (select 1 from dbo.Hackathons)
begin
	insert into dbo.Hackathons (HackathonName, HackathonLocation, HackathonStartDate, HackathonEndDate, HackathonURL)
	VALUES ('Hack the Crisis Nigeria 2022', 'Lagos, Nigeria', '2022-08-15', '2022-08-20', 'https://www.devpost.com/hackthecrisisnigeria2022'),
	   ('Hack the North 2022', 'Waterloo, Canada', '2022-09-16', '2022-09-18', 'https://www.devpost.com/hackthenorth2022'),
	   ('HackCU VIII', 'Boulder, USA', '2022-02-25', '2022-02-27', 'https://www.devpost.com/hackcu-viii'),
	   ('TechTogether Boston 2022', 'Boston, USA', '2022-04-01', '2022-04-03', 'https://www.devpost.com/techtogetherboston2022'),
	   ('HACK IT OUT 2022', 'Singapore', '2022-06-10', '2022-06-12', 'https://www.devpost.com/hackitout2022');
end