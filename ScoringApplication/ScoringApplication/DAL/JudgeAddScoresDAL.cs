using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace ScoringApplication
{
    public class JudgeAddScoresDAL
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataAdapter da1;
        DataSet ds;
        // Constructor for initialising the Sql Sever Connection

        public JudgeAddScoresDAL(string conString)
        {
            con = new SqlConnection(conString);
            con.Open();
        }
        // This method loads appointmentdates

        public DataTable LoadTeam()
        {
            SqlCommand cmd = new SqlCommand("select TeamName from TeamDetails", con);
            cmd.CommandType = System.Data.CommandType.Text;
            da = new SqlDataAdapter();
            ds = new DataSet();
            da.SelectCommand = cmd;
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            return dt;
        }

        // This method is used for loading the selected date patient detials into the GridView
        public DataTable LoadGrid(string teamName)
        {
            SqlCommand cmd = new SqlCommand("select TeamName, UseCase, SubmissionURL from TeamDetails where TeamName=@TeamName", con);
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Parameters.AddWithValue("@TeamName", teamName);
            da = new SqlDataAdapter();
            ds = new DataSet();
            da.SelectCommand = cmd;
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            return dt;
        }

        public string SubmitScore(int score, string Comments, string TeamName)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select * from Scores where TeamName=@TeamName and Score is not null", con);
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.Parameters.AddWithValue("@TeamName", TeamName);
                da = new SqlDataAdapter();
                ds = new DataSet();
                da.SelectCommand = cmd;
                da.Fill(ds);
                DataTable dt = ds.Tables[0];

                if (dt != null)
                {
                    SqlCommand cmd2 = new SqlCommand("AddScoreHistory", con);              //Stored Procedure to insert patient details
                    cmd2.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd2.Parameters.AddWithValue("@score", dt.Rows[0]["Score"]);
                    cmd2.Parameters.AddWithValue("@comments", dt.Rows[0]["Comments"]);
                    cmd2.Parameters.AddWithValue("@TeamName", dt.Rows[0]["TeamName"]);
                    da = new SqlDataAdapter();
                    da.InsertCommand = cmd2;
                    da.InsertCommand.ExecuteNonQuery();
                    SqlCommand cmd3 = new SqlCommand("delete from Scores where TeamName=@TeamName", con);              //Stored Procedure to insert patient details
                    cmd3.CommandType = System.Data.CommandType.Text;
                    cmd3.Parameters.AddWithValue("@TeamName", dt.Rows[0]["TeamName"]);
                    da = new SqlDataAdapter();
                    da.InsertCommand = cmd3;
                    da.InsertCommand.ExecuteNonQuery();

                }

                SqlCommand cmd1 = new SqlCommand("AddScores", con);              //Stored Procedure to insert patient details
                cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@score", score);
                cmd1.Parameters.AddWithValue("@comments", Comments);
                cmd1.Parameters.AddWithValue("@TeamName", TeamName);
                da = new SqlDataAdapter();
                da.InsertCommand = cmd1;
                da.InsertCommand.ExecuteNonQuery();
                return "Success";
            }
            catch (Exception ex)
            {
                return "Error";
            }
        }
    }
}