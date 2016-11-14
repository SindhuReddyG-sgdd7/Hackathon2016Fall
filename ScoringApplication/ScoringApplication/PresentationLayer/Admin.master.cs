using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScoringApplication
{
    public partial class Admin : System.Web.UI.MasterPage
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

        protected void LinkButtonViewTeams_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/AdminViewTeams.aspx");
        }

        protected void LinkButtonAddTeams_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/AdminAddTeams.aspx");
        }

        protected void LinkButtonViewScores_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/AdminViewScores.aspx");
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