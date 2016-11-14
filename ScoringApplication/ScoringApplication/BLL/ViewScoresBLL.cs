using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace ScoringApplication
{
    public class ViewScoresBLL
    {
        ConnectionStringLayer csLayer;
        public DataTable ViewStaff()
        {
            csLayer = new ConnectionStringLayer();              /*Connection String which is accessed from Connection string layer*/
            string conString = csLayer.cs;
            ViewScoresDAL viewDetails = new ViewScoresDAL(conString);
            DataTable dt = viewDetails.ViewStaff();
            return dt;

        }
    }
}