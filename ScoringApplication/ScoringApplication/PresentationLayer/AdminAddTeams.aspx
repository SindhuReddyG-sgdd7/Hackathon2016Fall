<%@ Page Title="" Language="C#" MasterPageFile="~/PresentationLayer/Admin.master" AutoEventWireup="true" CodeBehind="AdminAddTeams.aspx.cs" Inherits="ScoringApplication.AddTeams" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderAdmin" runat="server">
    <asp:Label ID="Label1" runat="server" Text="VIEW TEAM DETAILS" Style="z-index: 1; left: 10px; position:absolute; " 
            Font-Bold="True" Font-Size="Larger"
                ForeColor="#333300" ></asp:Label>
    <div style="height: auto; width: 1000px; position: relative; top: 50px; left: 2px;">
        <asp:Label ID="lblReg" runat="server" ForeColor="#009900" 
            style="z-index: 1; left: 16px; top: 24px; position: absolute" 
            Text="Team Successfully Added..............!"></asp:Label>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Label ID="lblTitle" runat="server" Text="ADD TEAM" Style="z-index: 1;
                left: 306px; top: 217px; position: absolute;top:12px; left:364px;" 
            Font-Bold="True" Font-Size="Larger"
                ForeColor="#333300"></asp:Label>
        <asp:Panel ID="JudgeReg" runat="server" BackColor="Silver" Style="z-index: 0; 
            position:absolute; top: 0px; left: 148px; height: 450px; Width:700px">
            
            <asp:Label ID="LabelTeamName" runat="server" Style="z-index: 1; left: 200px; top: 50px;
            position: absolute;" Text="Team Name" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="TxtTeamName" runat="server" Style="z-index: 1; left: 350px; top: 50px;
                position: absolute" TabIndex="1" CausesValidation="true"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTeamName" runat="server" ControlToValidate="TxtTeamName"
                ErrorMessage="Please enter Team Name" ForeColor="Red" SetFocusOnError="true"
                Style="z-index: 1; left: 520px; top: 50px; position: absolute" Font-Size="Medium"></asp:RequiredFieldValidator>
            
            <asp:Label ID="LabelUseCase" runat="server" Style="z-index: 1; left: 200px; top: 90px;
                position: absolute" Text="Use Case selected" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="TxtUseCase" runat="server" Style="z-index: 1; left: 350px; top: 90px;
                position: absolute" TabIndex="2"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUseCase" runat="server" ControlToValidate="TxtUseCase"
                ErrorMessage="Please enter Use Case" ForeColor="Red" Style="z-index: 1; left: 520px;
                top: 90px; position: absolute" SetFocusOnError="true" Font-Size="Medium"></asp:RequiredFieldValidator>
            
            <asp:Label ID="LabelCount" runat="server" Style="z-index: 1; left: 200px; top: 130px;
                position: absolute" Text="Team Size" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="TxtCount" runat="server" Style="z-index:1; left: 350px; top: 130px;
                position: absolute" TabIndex="5"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCount" runat="server" 
                ControlToValidate="TxtCount" ErrorMessage="Please enter Team Size" 
                Font-Size="Medium" ForeColor="Red" SetFocusOnError="true" Style="z-index: 1;
                left: 520px; top: 130px; position: absolute"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorCount" 
                runat="server" ControlToValidate="TxtCount" 
                ErrorMessage="Team Size should be 3 or 4" Font-Size="Medium" ForeColor="Red" 
                SetFocusOnError="true" Style="z-index: 1; left: 520px;
                top: 210px; position: absolute" 
                ValidationExpression="^([3-4]{1})$"></asp:RegularExpressionValidator>
            
            <asp:Label ID="LabelTeamLeader" runat="server" Style="z-index: 1; left: 200px; top: 170px;
            position: absolute;" Text="Team Leader Name" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="TxtTeamLeader" runat="server" Style="z-index: 1; left: 350px; top: 170px;
                position: absolute" TabIndex="1" CausesValidation="true"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTeamLeader" runat="server" ControlToValidate="TxtTeamLeader"
                ErrorMessage="Please enter Leader Name" ForeColor="Red" SetFocusOnError="true"
                Style="z-index: 1; left: 520px; top: 170px; position: absolute" Font-Size="Medium"></asp:RequiredFieldValidator>

            <asp:Label ID="LabelEmail" runat="server" Font-Size="Medium" Style="z-index: 1; left: 200px; top: 210px;
                position: absolute" Text="Email ID"></asp:Label>
            <asp:TextBox ID="TxtLeaderEmail" runat="server" Style="z-index:1; left: 350px; top: 210px;
                position: absolute" TabIndex="6"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" 
                ControlToValidate="TxtLeaderEmail" ErrorMessage="Please enter Email ID" 
                Font-Size="Medium" ForeColor="Red" SetFocusOnError="true" Style="z-index: 1; left: 520px;
                top: 210px; position: absolute"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
                runat="server" ControlToValidate="TxtLeaderEmail" 
                ErrorMessage="Enter a valid Email ID" Font-Size="Medium" ForeColor="Red" 
                SetFocusOnError="true" Style="z-index: 1;
                left: 520px; top: 210px; position: absolute" 
                ValidationExpression="^[\w\.\*]+@+((gmail|yahoo)+\.(com))|((umkc|(mail\.umkc))+\.(edu))$"></asp:RegularExpressionValidator>

            <asp:Label ID="LabelTeamMembers" runat="server" Font-Size="Medium" Style="z-index: 1; left: 200px; top: 250px;
                position: absolute" Text="Team Members"></asp:Label>
            <asp:TextBox ID="TxtTeamMembers" runat="server" Style="z-index: 1; left: 350px; top: 250px;
                position: absolute; "
                TabIndex="7"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTeamMembers" runat="server" 
                ControlToValidate="TxtTeamMembers" ErrorMessage="Please enter Address" 
                Font-Size="Medium" ForeColor="Red" SetFocusOnError="true" Style="z-index: 1; left: 520px;
                top: 250px; position: absolute"></asp:RequiredFieldValidator>

            <asp:Label ID="LabelTeamEmail" runat="server" Font-Size="Medium" Style="z-index: 1; left: 200px; top: 290px;
                position: absolute" Text="Email ID"></asp:Label>
            <asp:TextBox ID="TxtTeamEmail" runat="server" Style="z-index:1; left: 350px; top: 290px;
                position: absolute" TabIndex="6"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTeamEmail" runat="server" 
                ControlToValidate="TxtTeamEmail" ErrorMessage="Please enter Email ID" 
                Font-Size="Medium" ForeColor="Red" SetFocusOnError="true" Style="z-index: 1; left: 520px;
                top: 290px; position: absolute"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorTeamEmail" 
                runat="server" ControlToValidate="TxtTeamEmail" 
                ErrorMessage="Enter a valid Email ID" Font-Size="Medium" ForeColor="Red" 
                SetFocusOnError="true" Style="z-index: 1;
                left: 520px; top: 290px; position: absolute" 
                ValidationExpression="^[\w\.\*]+@+((gmail|yahoo)+\.(com))|((umkc|(mail\.umkc))+\.(edu))$"></asp:RegularExpressionValidator>
           
            <asp:Label ID="LabelComments" runat="server" Font-Size="Medium" Style="z-index: 1; left: 200px; top: 330px;
                position: absolute" Text="Comments"></asp:Label>
            <asp:TextBox ID="TxtComments" runat="server" Style="z-index: 1; left: 350px; top: 330px;
                position: absolute; height: 43px; width: 151px;" TextMode="MultiLine" 
                TabIndex="7"></asp:TextBox>

            <asp:Button ID="ButtonRegister" runat="server" Style="z-index: 1; left: 350px;
                top: 428px; position: absolute" Text="Register" onclick="ButtonRegister_Click" 
                TabIndex="10" />
            <asp:Label ID="lblExist" runat="server" Text="Label" Style="z-index: 1; left: 448px;
                top: 469px; position: absolute" ForeColor="Red"></asp:Label>
            <br />
        </asp:Panel>
        <cc1:RoundedCornersExtender ID="Panel1_RoundedCornersExtender" runat="server" Enabled="True"
            TargetControlID="JudgeReg" Radius="30">
        </cc1:RoundedCornersExtender>
        <br />
        <br />
    </div>
</asp:Content>