using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace ScoringApplication
{
    public class JudgeAddScoresBLL
    {
        ConnectionStringLayer csLayer;
        public DataTable LoadTeam()
        {
            csLayer = new ConnectionStringLayer();              /*Connection String which is accessed from Connection string layer*/
            string conString = csLayer.cs;
            JudgeAddScoresDAL loadDAL = new JudgeAddScoresDAL(conString);
            DataTable dt = loadDAL.LoadTeam();
            return dt;
        }

        public DataTable LoadGrid(string appointmentDate)
        {
            csLayer = new ConnectionStringLayer();              /*Connection String which is accessed from Connection string layer*/
            string conString = csLayer.cs;
            JudgeAddScoresDAL loadDAL = new JudgeAddScoresDAL(conString);
            DataTable dt = loadDAL.LoadGrid(appointmentDate);
            return dt;
        }

        public string SubmitScore(string score, string Comments, string TeamName)
        {
            csLayer = new ConnectionStringLayer();              /*Connection String which is accessed from Connection string layer*/
            string conString = csLayer.cs;
            JudgeAddScoresDAL loadDAL = new JudgeAddScoresDAL(conString);
            string dt = loadDAL.SubmitScore(Convert.ToInt32(score), Comments, TeamName);
            return dt;
        }
    }

}
