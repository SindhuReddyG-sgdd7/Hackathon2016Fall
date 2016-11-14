using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace ScoringApplication
{
    public class AdminAddTeamsDAL
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataAdapter da1;
        DataSet ds;
        // Constructor for initialising the Sql Sever Connection

        public AdminAddTeamsDAL(string conString)
        {
            con = new SqlConnection(conString);
            con.Open();
        }
        // This method inserts patient details into the database

        public string[] AddTeam(string TeamName, string UseCase, string TeamSize, string leader, string leaderEmail, string teamMembers, string MemberEmail, string Comments)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("AddTeams", con);              //Stored Procedure to insert patient details
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@teamName", TeamName);
                cmd.Parameters.AddWithValue("@useCase", UseCase);
                cmd.Parameters.AddWithValue("@teamSize", TeamSize);
                cmd.Parameters.AddWithValue("@teamLeader", leader);
                cmd.Parameters.AddWithValue("@LeadEmail", leaderEmail);
                cmd.Parameters.AddWithValue("@teamMembers", teamMembers);
                cmd.Parameters.AddWithValue("@memberEmail", MemberEmail);
                cmd.Parameters.AddWithValue("@Comments", Comments);
                cmd.Parameters.AddWithValue("@Submission", "Not submitted yet");
                da = new SqlDataAdapter();
                ds = new DataSet();
                da.InsertCommand = cmd;
                da.InsertCommand.ExecuteNonQuery();

                string[] credentials = new string[2];
                return credentials;
            }
            catch (Exception)
            {
                string[] credentials = new string[1];
                credentials[0] = "Already Exist";
                return credentials;
            }

        }
    }
}