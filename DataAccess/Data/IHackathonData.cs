using DataAccess.Models;

namespace DataAccess.Data;

public interface IHackathonData
{
    Task<IEnumerable<HackathonModel>> GetHackathons();
    Task<HackathonModel?> GetHackathon(int id);
    Task InsertHackathon(HackathonModel hackathon);
    Task UpdateHackathon(HackathonModel hackathon);
    Task DeleteHackathon(int id);
}