using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ScoringApplication
{
    public partial class AddScores : System.Web.UI.Page
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
                    if ((string)Session["Role"] == "Admin")
                    {
                        Response.Redirect("~/PresentationLayer/AdminViewTeams.aspx");
                    }
                    else
                    {
                        JudgeAddScoresBLL loadDates = new JudgeAddScoresBLL();
                        DataTable dt = loadDates.LoadTeam();
                        foreach (DataRow dr in dt.Rows)
                        {
                            ddlLoadDate.Items.Add(dr[0].ToString());
                        }
                        GridView1.Visible = false;
                        lblStatusGetDetails.Visible = false;
                    }
                }
            }
            //else
            //{
            //    if (Session["username"] == null)
            //    {
            //        Response.Redirect("~/PresentationLayer/Login.aspx");
            //    }

            //}

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (ddlLoadDate.SelectedItem.Value == "-1")
            {
                lblStatusGetDetails.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                JudgeAddScoresBLL loadGrid = new JudgeAddScoresBLL();
                DataTable dt = loadGrid.LoadGrid(ddlLoadDate.SelectedValue.ToString());
                if (dt.Rows.Count == 0)
                {
                    GridView1.Visible = false;
                    lblStatusGetDetails.Visible = true;
                    lblStatusGetDetails.Text = "You have not selected appointment date";
                }
                else
                {
                    lblStatusGetDetails.Visible = false;
                    GridView1.Visible = true;
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    if (dt.Rows[0]["SubmissionURL"].ToString() != "Not submitted yet")
                    {
                        ButtonScores.Visible = true;
                    }
                    else
                    {
                        lblStatusGetDetails.Visible = true;
                        lblStatusGetDetails.Text = "You are unable to score as the URL is not submitted yet.";
                    }
                }
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            JudgeAddScoresBLL loadGrid = new JudgeAddScoresBLL();
            DataTable dt = loadGrid.LoadGrid(ddlLoadDate.SelectedValue.ToString());
            if (dt.Rows.Count == 0)
            {
                GridView1.Visible = false;
                lblStatusGetDetails.Visible = true;
                lblStatusGetDetails.Text = "You have not selected appointment date";
            }
            else
            {
                lblStatusGetDetails.Visible = false;
                GridView1.Visible = true;
                GridView1.DataSource = dt;
                GridView1.DataBind();

                if(dt.Rows[0]["SubmissionURL"].ToString() != "Not submitted yet")
                {
                    ButtonScores.Visible = true;
                }
            }
        }

        protected void ButtonScores_Click(object sender, EventArgs e)
        {
            scores.Visible = true;

        }

        protected void ButtonComments_Click(object sender, EventArgs e)
        {
            scores.Visible = false;
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            JudgeAddScoresBLL regBLL = new JudgeAddScoresBLL(); ;
            string credentials;
            credentials = regBLL.SubmitScore(TxtScores.Text, TxtComments.Text, ddlLoadDate.SelectedValue.ToString());
            if (credentials == "Error")
            {
            }
            else
            {
            }
        }

        
    }
}