using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace ScoringApplication
{
    public class JudgeRegistrationDAL
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataAdapter da1;
        DataSet ds;
        // Constructor for initialising the Sql Sever Connection

        public JudgeRegistrationDAL(string conString)
        {
            con = new SqlConnection(conString);
            con.Open();
        }
        // This method inserts patient details into the database

        public string[] RegisterDetailsDAL(string firstName, string lastName, string gender, string company, string phoneNo, string email, string address, string city, string pincode, string username, string password)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("JudgeRegistration", con);              //Stored Procedure to insert patient details
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", username);
                cmd.Parameters.AddWithValue("@UserPwd", password);
                cmd.Parameters.AddWithValue("@FirstName", firstName);
                cmd.Parameters.AddWithValue("@LastName", lastName);
                cmd.Parameters.AddWithValue("@Gender", gender);
                cmd.Parameters.AddWithValue("@CompanyName", company);
                cmd.Parameters.AddWithValue("@PhoneNo", phoneNo);
                cmd.Parameters.AddWithValue("@EMail", email);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@City", city);
                cmd.Parameters.AddWithValue("@PIN", pincode);
                da = new SqlDataAdapter();
                ds = new DataSet();
                da.InsertCommand = cmd;
                da.InsertCommand.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UserDetailsInsert", con);              //Stored Procedure to insert patient details
                cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@UserName", username);
                cmd1.Parameters.AddWithValue("@UserPwd", password);
                cmd1.Parameters.AddWithValue("@UserRole", "Judge");
                da1 = new SqlDataAdapter();
                da1.InsertCommand = cmd1;
                da1.InsertCommand.ExecuteNonQuery();

                string[] credentials = new string[2];
                credentials[0] = username;
                credentials[1] = password;
                return credentials;
            }
            catch (Exception ex)
            {
                string[] credentials = new string[1];
                credentials[0] = "Already Exist";
                return credentials;
            }

        }
    }
}