<%@ Page Title="" Language="C#" MasterPageFile="~/PresentationLayer/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ScoringApplication.Login" %>

<%@ MasterType VirtualPath="~/PresentationLayer/MasterPage.Master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMaster" runat="server">
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <div style="width: 100%; height: 600px; position: absolute;">
        <asp:Panel ID="LoginPanel" runat="server" BackColor="#999966" Style="z-index: 11; left: 625px; position: relative; top: 30px; right: 10px; height: 245px; width: 317px; margin: 0px; padding: 0px;">
            <div style="background-color: ActiveCaption; font-family: Lucida Calligraphy; font-size: large; font-weight: bold; position: absolute; top: 0px; padding: 0px; z-index: 3; width: 317px; height: 30px;">
                <asp:Label ID="LabelLogin" runat="server" Style="z-index: 1; left: 10px; top: 5px; position: absolute; height: 21px; width: 53px"
                    Text="Login" Font-Size="Medium" ForeColor="Black"></asp:Label>
            </div>
            <asp:Label ID="LabelUserName" runat="server" Style="z-index: 1; left: 49px; top: 64px; position: absolute"
                Text="User Name" Font-Size="Medium" ForeColor="Black"></asp:Label>
            <asp:Label ID="LabelPassword" runat="server" Style="z-index: 1; left: 50px; top: 124px; position: absolute"
                Text="Password" Font-Size="Medium" ForeColor="Black"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" Style="z-index: 1; left: 48px; top: 94px; position: absolute; margin-top: 0px; width: 150px;"
                BorderColor="#6699FF" BorderStyle="Solid" TabIndex="1" AutoPostBack="True" ></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" Style="z-index: 1; left: 49px; top: 151px; position: absolute; width: 150px;"
                BorderColor="#6699FF" BorderStyle="Solid" TabIndex="2" TextMode="Password"></asp:TextBox>
            <asp:CheckBox ID="CheckRem" runat="server" Text="Remember Password" Style="z-index: 1; left: 45px; top: 175px; position: absolute"
                Font-Size="Large" TabIndex="3" />
            <asp:Button ID="ButtonLogin" runat="server" Style="z-index: 1; left: 50px; top: 206px; position: absolute; width: 65px"
                Text="Login" OnClick="ButtonLogin_Click" TabIndex="4" />
            <asp:Button ID="btnSignUP" runat="server" Text="Sign Up" Style="z-index: 1; left: 140px; top: 204px; position: absolute; width: 65px"
                OnClick="btnSignUP_Click" ValidationGroup="sign" TabIndex="5" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ControlToValidate="txtUsername"
                ErrorMessage="*" ForeColor="Red" Style="z-index: 1; left: 207px; top: 95px; position: absolute" Font-Size="Medium"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="*" ForeColor="Red" Style="z-index: 1; left: 206px; top: 151px; position: absolute" Font-Size="Medium"></asp:RequiredFieldValidator>
        </asp:Panel>
        <cc1:RoundedCornersExtender ID="Panel1_RoundedCornersExtender" runat="server" Enabled="True" TargetControlID="LoginPanel" Radius="15" Corners="Bottom">
        </cc1:RoundedCornersExtender>
        <asp:Panel ID="NotificationsPanel" runat="server" Style="z-index: 0; position: absolute; top: 30px; left: 30px; height:400px; width: 371px">
            <center><marquee id="MyMovingText" runat="server" behaviour="scroll" direction="up" onmouseover="this.stop();" onmouseout="this.start();">
                <center><img src="https://upload.wikimedia.org/wikipedia/en/thumb/4/47/Twitter_2010_logo_-_from_Commons.svg/1024px-Twitter_2010_logo_-_from_Commons.svg.png" style="width:200px;height:70px;"/></center>
                <br /><center><img src="http://www.7men.nl/wp-content/uploads/2015/12/IBM-banner.jpg" style="width:100px;height:70px;"/></center>
                <br /><center><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/H_and_R_Block_logo.svg/1024px-H_and_R_Block_logo.svg.png" style="width:200px;height:70px;"/></center>
                <br /><center><img src="https://d3gqux9sl0z33u.cloudfront.net/AA/AK/caregiverreliefbedfordco-org/images/3417981/main/Doodlekit-Logo.gif" style="width:200px;height:70px;"/></center>
                <br /><center><img src="https://artskc.org/wp-content/uploads/2013/02/DST.jpg" style="width:100px;height:70px;"/></center>
                <br /><center><img src="http://finovate.com/wp-content/uploads/2016/09/EyeVerify-Logo-copy.png" style="width:200px;height:70px;"/></center>
                <br /><br />
            </marquee>
                </center>
        </asp:Panel>
        <cc1:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" Enabled="True"
            TargetControlID="NotificationsPanel" Radius="15" Corners="All" BorderColor="DarkGreen">
        </cc1:RoundedCornersExtender>
    </div>
</asp:Content>