using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess.DbAccess;
using DataAccess.Models;

namespace DataAccess.Data;

public class HackathonData : IHackathonData
{
    private readonly ISqlDataAccess _db;

    public HackathonData(ISqlDataAccess db)
    {
        _db = db;
    }

    public Task<IEnumerable<HackathonModel>> GetHackathons()
    {
        return _db.LoadData<HackathonModel, dynamic>("dbo.spHackathons_GetAll", new { });
    }

    public async Task<HackathonModel?> GetHackathon(int id)
    {
        var results = await _db.LoadData<HackathonModel, dynamic>(
            "dbo.spHackathons_Get", new { Id = id });
        return results.FirstOrDefault();
    }

    public Task InsertHackathon(HackathonModel hackathon)
    {
        return _db.SaveData("dbo.spHackathons_Insert", new
        {
            hackathon.HackathonName, hackathon.HackathonLocation, hackathon.HackathonStartDate, 
            hackathon.HackathonEndDate, hackathon.URL
        });
    }

    public Task UpdateHackathon(HackathonModel hackathon)
    {
        return _db.SaveData("dbo.spHackathons_Update", hackathon);
    }

    public Task DeleteHackathon(int id)
    {
        return _db.SaveData("dbo.spHackathons_Delete", new { Id = id });
    }
}