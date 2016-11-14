using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ScoringApplication
{
    public class UserAuthenticationBLL
    {
        ConnectionStringLayer csLayer;
        public string UserAuthentication(string UserName, string UserPwd)
        {
            csLayer = new ConnectionStringLayer();              /*Connection String which is accessed from Connection string layer*/
            string conString = csLayer.cs;

            UserAuthenticationDAL regDAL = new UserAuthenticationDAL(conString);
            string userRole = regDAL.UserAuthentication(UserName, UserPwd);
            return userRole;
        }
    }

}