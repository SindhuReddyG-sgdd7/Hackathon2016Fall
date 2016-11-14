using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ScoringApplication
{
    public class AdminAddTeamsBLL
    {
        ConnectionStringLayer csLayer;
        public string[] AddTeams(string TeamName, string UseCase, string TeamSize, string leader, string leaderEmail, string teamMembers, string MemberEmail, string Comments)
        {
            csLayer = new ConnectionStringLayer();              /*Connection String which is accessed from Connection string layer*/
            string conString = csLayer.cs;
            AdminAddTeamsDAL regDAL = new AdminAddTeamsDAL(conString);
            string[] credentials = new string[2];
            credentials = regDAL.AddTeam(TeamName, UseCase, TeamSize, leader, leaderEmail, teamMembers, MemberEmail, Comments);
            return credentials;
        }
    }
}