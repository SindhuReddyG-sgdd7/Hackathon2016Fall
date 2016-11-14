using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScoringApplication
{
    public partial class AddTeams : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblReg.Visible = false;
            lblExist.Visible = false;
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                AdminAddTeamsBLL regBLL = new AdminAddTeamsBLL();
                string[] credentials = new string[2];
                credentials = regBLL.AddTeams(TxtTeamName.Text, TxtUseCase.Text, TxtCount.Text, TxtTeamLeader.Text, TxtLeaderEmail.Text, TxtTeamMembers.Text, TxtTeamEmail.Text, TxtComments.Text);
                if (credentials[0] == "Already Exist")
                {
                    lblExist.Visible = true;
                    lblExist.Text = credentials[0];
                }
                else
                {
                    lblReg.Visible = true;
                    JudgeReg.Visible = false;
                    lblTitle.Visible = false;
                    
                }
            }
        }
    }
}