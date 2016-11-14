using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace ScoringApplication
{
    public class AdminViewTeamsBLL
    {
        ConnectionStringLayer csLayer;
        public DataTable ViewTeams()
        {
            csLayer = new ConnectionStringLayer();              /*Connection String which is accessed from Connection string layer*/
            string conString = csLayer.cs;
            AdminViewTeamsDAL viewDetails = new AdminViewTeamsDAL(conString);
            DataTable dt = viewDetails.ViewTeams();
            return dt;

        }
    }
}