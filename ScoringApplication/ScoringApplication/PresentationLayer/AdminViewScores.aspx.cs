using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ScoringApplication
{
    public partial class ViewScores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["username"] == null && Session["password"] == null)
                {
                    Response.Redirect("~/PresentationLayer/Login.aspx");
                }
                else
                {
                    if ((string)Session["Role"] == "Patient")
                    {
                        Response.Redirect("~/PresentationLayer/PatientPage.aspx");
                    }
                    else if ((string)Session["Role"] == "Staff")
                    {
                        Response.Redirect("~/PresentationLayer/StaffPage.aspx");
                    }
                    else
                    {
                        try
                        {
                            ViewScoresBLL viewDetails = new ViewScoresBLL();
                            DataTable dt = viewDetails.ViewStaff();
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                        catch(Exception ex)
                        {

                        }
                    }
                }
            }
            else
            {
                if (Session["username"] == null)
                {
                    Response.Redirect("~/PresentationLayer/Login.aspx");
                }

            }

        }

        protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            ViewScoresBLL viewDetails = new ViewScoresBLL();
            DataTable dt = viewDetails.ViewStaff();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}