using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace ScoringApplication
{
    public class UserAuthenticationDAL
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataAdapter da1;
        DataSet ds;
        // Constructor for initialising the Sql Sever Connection

        public UserAuthenticationDAL(string conString)
        {
            con = new SqlConnection(conString);
            con.Open();
        }
        // This method authenticates the user based on credentials entered

        public string UserAuthentication(string userName, string password)
        {
            try
            {
                SqlCommand newcmd = new SqlCommand("UserDetailsGet", con);
                newcmd.CommandType = System.Data.CommandType.StoredProcedure;
                newcmd.Parameters.AddWithValue("@UserName", userName);
                newcmd.Parameters.AddWithValue("@UserPwd", password);
                da1 = new SqlDataAdapter();
                da1.SelectCommand = newcmd;
                string userRole = (string)da1.SelectCommand.ExecuteScalar();
                return userRole;
            }
            catch(Exception ex)
            {
                string credentials;
                credentials = "Already Exist";
                return credentials;
            }
        }
    }
}