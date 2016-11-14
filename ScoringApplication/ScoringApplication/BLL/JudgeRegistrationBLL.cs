using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ScoringApplication
{
    public class JudgeRegistrationBLL
    {
        ConnectionStringLayer csLayer;
        public string[] JudgeRegister(string firstName, string lastName, string gender, string company, string phoneNo, string email, string address, string city, string pincode, string username, string password)
        {
            csLayer = new ConnectionStringLayer();              /*Connection String which is accessed from Connection string layer*/
            string conString = csLayer.cs;
            JudgeRegistrationDAL regDAL = new JudgeRegistrationDAL(conString);
            string[] credentials = new string[2];
            credentials = regDAL.RegisterDetailsDAL(firstName, lastName, gender, company, phoneNo, email, address, city, pincode, username, password);
            return credentials;

        }
    }
}