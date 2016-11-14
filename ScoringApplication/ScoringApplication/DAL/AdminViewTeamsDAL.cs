using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace ScoringApplication
{
    public class AdminViewTeamsDAL
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        // Constructor for initialising the Sql Sever Connection

        public AdminViewTeamsDAL(string conString)
        {
            con = new SqlConnection(conString);
            con.Open();
        }
        // This method is for viewing staff details

        public DataTable ViewTeams()
        {
            SqlCommand cmd = new SqlCommand("ViewTeams", con);               //Stored Procedure to view the staff details
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            da = new SqlDataAdapter();
            ds = new DataSet();
            da.SelectCommand = cmd;
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            return dt;

        }
    }
}