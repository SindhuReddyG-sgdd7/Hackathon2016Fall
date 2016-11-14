using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ScoringApplication
{
    public class ViewScoresDAL
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        // Constructor for initialising the Sql Sever Connection

        public ViewScoresDAL(string conString)
        {
            con = new SqlConnection(conString);
            con.Open();
        }
        // This method is for viewing staff details

        public DataTable ViewStaff()
        {
            SqlCommand cmd = new SqlCommand("GetAllScores", con);               //Stored Procedure to view the staff details
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