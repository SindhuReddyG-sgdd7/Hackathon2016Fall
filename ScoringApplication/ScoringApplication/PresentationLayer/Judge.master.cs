using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScoringApplication
{
    public partial class Judge : System.Web.UI.MasterPage
    {
        public Label LabelOnNestedMasterPage
        {
            get
            {
                return this.lblOnNested;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            lblOnNested.Text = "Welcome" + " " + (string)Session["username"];
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();
        }

        protected void LinkButtonViewSubmissions_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/JudgeViewSubmissions.aspx");
        }

        protected void LinkButtonAddScores_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/JudgeAddScores.aspx");
        }

        protected void LinkButtonPassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/ChangePasswordM.aspx");
        }

        protected void LinkButtonLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("username");
            Session.RemoveAll();
            Response.Redirect("~/PresentationLayer/Login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/ConfirmRequests.aspx");
        }
    }
}