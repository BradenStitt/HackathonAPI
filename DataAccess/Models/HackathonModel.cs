using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models;

internal class HackathonModel
{
    public int Id { get; set; }
    public string HackathonName { get; set; }
    public string HackathonLocation { get; set; }
    public string HackathonStartDate { get; set; }
    public string HackathonEndDate { get; set; }
    public string Url { get; set; }


}