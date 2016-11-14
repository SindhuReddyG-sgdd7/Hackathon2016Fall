using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScoringApplication
{
    public partial class JudgeRegistration : System.Web.UI.Page
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
                JudgeRegistrationBLL regBLL = new JudgeRegistrationBLL();
                string gender = RadioButtonListGender.SelectedValue;
                string[] credentials = new string[2];
                credentials = regBLL.JudgeRegister(TxtFN.Text, TxtLN.Text, gender, TxtCompany.Text, TxtMobile.Text, TxtEmail.Text, TxtAddress.Text, TxtCity.Text, TxtPin.Text, TxtUserName.Text, TxtPassword.Text);
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