<%@ Page Title="" Language="C#" MasterPageFile="~/PresentationLayer/MasterPage.Master" AutoEventWireup="true" CodeBehind="JudgeRegistration.aspx.cs" Inherits="ScoringApplication.JudgeRegistration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMaster" runat="server">
    <div style="height: auto; width: 1000px; position: relative; top: 30px; left: 2px;">
        <asp:Label ID="lblReg" runat="server" ForeColor="#009900" 
            style="z-index: 1; left: 16px; top: 24px; position: absolute" 
            Text="Registered Successfully..............!"></asp:Label>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
        <asp:Label ID="lblTitle" runat="server" Text="JUDGE REGISTRATION FORM" Style="z-index: 1;
                left: 306px; top: 217px; position: absolute;top:12px; left:364px;" 
            Font-Bold="True" Font-Size="Larger"
                ForeColor="#333300"></asp:Label>
        <asp:Panel ID="JudgeReg" runat="server" BackColor="Silver" Style="z-index: 0; 
            position:absolute; top: 0px; left: 148px; height: 450px; Width:700px">
            
            <asp:Label ID="LabelFN" runat="server" Style="z-index: 1; left: 200px; top: 50px;
            position: absolute;" Text="First Name" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="TxtFN" runat="server" Style="z-index: 1; left: 350px; top: 50px;
                position: absolute" TabIndex="1" CausesValidation="true"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFN" runat="server" ControlToValidate="TxtFN"
                ErrorMessage="Please enter First Name" ForeColor="Red" SetFocusOnError="true"
                Style="z-index: 1; left: 520px; top: 50px; position: absolute" Font-Size="Medium"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorFN" runat="server"
                ControlToValidate="TxtFN" ErrorMessage="Enter only alphabets" ForeColor="Red"
                ValidationExpression="[a-zA-Z]{1,25}" Style="z-index: 1; left: 520px; top: 50px;
                position: absolute" SetFocusOnError="true" Font-Size="Medium"></asp:RegularExpressionValidator>
            
            <asp:Label ID="LabelLN" runat="server" Style="z-index: 1; left: 200px; top: 90px;
                position: absolute" Text="Last Name" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="TxtLN" runat="server" Style="z-index: 1; left: 350px; top: 90px;
                position: absolute" TabIndex="2"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorLN" runat="server" ControlToValidate="TxtLN"
                ErrorMessage="Please enter Last Name" ForeColor="Red" Style="z-index: 1; left: 520px;
                top: 90px; position: absolute" SetFocusOnError="true" Font-Size="Medium"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorLN" runat="server"
                ControlToValidate="TxtLN" ErrorMessage="Enter only alphabets" ForeColor="Red"
                ValidationExpression="[a-zA-Z]{1,25}" Style="z-index: 1; left: 520px; top: 90px;
                position: absolute" SetFocusOnError="true" Font-Size="Medium"></asp:RegularExpressionValidator>
            
            <asp:Label ID="LabelGender" runat="server" Style="z-index: 1; left: 200px; top: 130px;
                position: absolute" Text="Gender" Font-Size="Medium"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonListGender" runat="server" RepeatColumns="2"
                Style="z-index: 1; left: 350px; top: 130px; position: absolute" TabIndex="3">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" ControlToValidate="RadioButtonListGender"
                ErrorMessage="Please mention Gender" ForeColor="Red" Style="z-index: 1; left: 520px;
                top: 130px; position: absolute" SetFocusOnError="true" Font-Size="Medium"></asp:RequiredFieldValidator>
            
            <asp:Label ID="LabelCompany" runat="server" Style="z-index: 1; left: 200px; top: 170px;
                position: absolute" Text="Company Name" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="TxtCompany" runat="server" Style="z-index: 1; left: 350px; top: 170px;
                position: absolute" TabIndex="2"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCompany" runat="server" ControlToValidate="TxtCompany"
                ErrorMessage="Please enter Company Name" ForeColor="Red" Style="z-index: 1; left: 520px;
                top: 170px; position: absolute" SetFocusOnError="true" Font-Size="Medium"></asp:RequiredFieldValidator>

            <asp:Label ID="LabelMobile" runat="server" Font-Size="Medium" Style="z-index: 1; left: 200px; top: 210px;
                position: absolute" Text="Contact No."></asp:Label>
            <asp:TextBox ID="TxtMobile" runat="server" Style="z-index:1; left: 350px; top: 210px;
                position: absolute" TabIndex="5"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMobile" runat="server" 
                ControlToValidate="TxtMobile" ErrorMessage="Please enter Mobile Number" 
                Font-Size="Medium" ForeColor="Red" SetFocusOnError="true" Style="z-index: 1;
                left: 520px; top: 210px; position: absolute"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorMobile" 
                runat="server" ControlToValidate="TxtMobile" 
                ErrorMessage="Enter a valid Mobile Number" Font-Size="Medium" ForeColor="Red" 
                SetFocusOnError="true" Style="z-index: 1; left: 520px;
                top: 210px; position: absolute" 
                ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>

            <asp:Label ID="LabelEmail" runat="server" Font-Size="Medium" Style="z-index: 1; left: 200px; top: 250px;
                position: absolute" Text="Email ID"></asp:Label>
            <asp:TextBox ID="TxtEmail" runat="server" Style="z-index:1; left: 350px; top: 250px;
                position: absolute" TabIndex="6"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" 
                ControlToValidate="TxtEmail" ErrorMessage="Please enter Email ID" 
                Font-Size="Medium" ForeColor="Red" SetFocusOnError="true" Style="z-index: 1; left: 520px;
                top: 250px; position: absolute"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
                runat="server" ControlToValidate="TxtEmail" 
                ErrorMessage="Enter a valid Email ID" Font-Size="Medium" ForeColor="Red" 
                SetFocusOnError="true" Style="z-index: 1;
                left: 520px; top: 250px; position: absolute" 
                ValidationExpression="^[\w\.\*]+@+(gmail|yahoo|techmahindra)+\.(com)$"></asp:RegularExpressionValidator>

            <asp:Label ID="LabelAddress" runat="server" Font-Size="Medium" Style="z-index: 1; left: 200px; top: 290px;
                position: absolute" Text="Address"></asp:Label>
            <asp:TextBox ID="TxtAddress" runat="server" Style="z-index: 1; left: 350px; top: 290px;
                position: absolute; height: 43px; width: 151px;" TextMode="MultiLine" 
                TabIndex="7"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" 
                ControlToValidate="TxtAddress" ErrorMessage="Please enter Address" 
                Font-Size="Medium" ForeColor="Red" SetFocusOnError="true" Style="z-index: 1; left: 520px;
                top: 290px; position: absolute"></asp:RequiredFieldValidator>

            <asp:Label ID="LabelCity" runat="server" Font-Size="Medium" Style="z-index: 1; left: 200px; top: 350px;
                position: absolute" Text="City"></asp:Label>
            <asp:TextBox ID="TxtCity" runat="server" Style="z-index: 1; left: 350px; top: 350px;
                position: absolute" TabIndex="8"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" 
                ControlToValidate="TxtCity" ErrorMessage="Please enter City Name" 
                Font-Size="Medium" ForeColor="Red" SetFocusOnError="true" Style="z-index: 1; left: 520px;
                top: 350px; position: absolute"></asp:RequiredFieldValidator>

            <asp:Label ID="LabelPin" runat="server" Font-Size="Medium" Style="z-index: 1; left: 200px; top: 390px;
                position: absolute" Text="Pin Code"></asp:Label>
            <asp:TextBox ID="TxtPin" runat="server" Style="z-index:1; left: 350px; top: 390px;
                position: absolute" TabIndex="9"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPin" runat="server" 
                ControlToValidate="TxtPin" ErrorMessage="Please enter Pincode" 
                Font-Size="Medium" ForeColor="Red" SetFocusOnError="true" Style="z-index: 1; left: 520px;
                top: 390px; position: absolute"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPin" 
                runat="server" ControlToValidate="TxtPin" ErrorMessage="Enter a valid Pincode" 
                Font-Size="Medium" ForeColor="Red" SetFocusOnError="true" Style="z-index: 1; left: 520px; top: 390px;
                position: absolute" ValidationExpression="[0-9]{5}$"></asp:RegularExpressionValidator>

            <asp:Label ID="LabelUserName" runat="server" Style="z-index: 1; left: 200px; top: 430px;
            position: absolute;" Text="User Name" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="TxtUserName" runat="server" Style="z-index: 1; left: 350px; top: 430px;
                position: absolute" TabIndex="1" CausesValidation="true"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ControlToValidate="TxtUserName"
                ErrorMessage="Please enter User Name" ForeColor="Red" SetFocusOnError="true"
                Style="z-index: 1; left: 520px; top: 430px; position: absolute" Font-Size="Medium"></asp:RequiredFieldValidator>
            
            <asp:Label ID="LabelPassword" runat = "server" Text="Password" Font-Size="Medium" Style="z-index: 1; left: 200px; top: 470px;
            position: absolute;"></asp:Label>
            <asp:TextBox ID="TxtPassword" runat = "server" 
                Style="z-index: 1; left: 350px; top: 470px; position: absolute" TextMode="Password" 
                TabIndex="2" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" 
                ControlToValidate="TxtPassword" ErrorMessage="*" ForeColor="Red" 
                Style="z-index: 1; left: 520px; top: 470px; position: absolute"></asp:RequiredFieldValidator>
            
            <asp:Button ID="ButtonRegister" runat="server" Style="z-index: 1; left: 350px;
                top: 510px; position: absolute" Text="Register" onclick="ButtonRegister_Click" 
                TabIndex="10" />
            <asp:Label ID="lblExist" runat="server" Text="Label" Style="z-index: 1; left: 448px;
                top: 510px; position: absolute" ForeColor="Red"></asp:Label>
            <br />
        </asp:Panel>
        <cc1:RoundedCornersExtender ID="Panel1_RoundedCornersExtender" runat="server" Enabled="True"
            TargetControlID="JudgeReg" Radius="30">
        </cc1:RoundedCornersExtender>
        <br />
    </div>
</asp:Content>
