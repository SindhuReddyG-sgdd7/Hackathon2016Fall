﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PresentationLayer/Judge.master" AutoEventWireup="true" CodeBehind="JudgeAddScores.aspx.cs" Inherits="ScoringApplication.AddScores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderJudge" runat="server">
    <div>
       <br />
       <asp:DropDownList ID="ddlLoadDate" runat="server" style="z-index: 1; left: 304px; top: 34px; position: absolute; height: 22px; width: 116px;" 
            TabIndex="1">
           <asp:ListItem Value="-1">----Select----</asp:ListItem>
       </asp:DropDownList>
       <br />
       <asp:Label ID="Label3" runat="server" 
           style="z-index: 1; left: 217px; top: 37px; position: absolute" 
           Text="Select Team:"></asp:Label>
       <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
           style="z-index: 1; left: 430px; top: 34px; position: absolute; height: 22px" 
           Text="Get Details" TabIndex="2" />
       <br />
       <asp:Label ID="lblStatusGetDetails" runat="server" 
           style="z-index: 1; left: 304px; top: 75px; position: absolute" 
           Text="Please Select Appointment Date" ForeColor="Red"></asp:Label>
       <br />
       <br />
       <br />
       <br />
       <br />
       <asp:GridView ID="GridView1" runat="server" 
           
           style="z-index: 1; left: 40px; top: 115px; position: absolute; height: 54px; width: 723px" 
           AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
           BorderWidth="1px" CellPadding="3" CellSpacing="2" PageSize="1" 
            onpageindexchanging="GridView1_PageIndexChanging">
           <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
           <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
           <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
           <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
           <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#FFF1D4" />
           <SortedAscendingHeaderStyle BackColor="#B95C30" />
           <SortedDescendingCellStyle BackColor="#F1E5CE" />
           <SortedDescendingHeaderStyle BackColor="#93451F" />
       </asp:GridView>
       <br />
        <asp:Button ID="ButtonScores" runat="server" onclick="ButtonScores_Click" 
           style="z-index: 1; left: 450px; top: 200px; position: absolute; height: 22px" 
           Text="Add Scores and Comments" TabIndex="2" Visible="false" />
        <div id="scores" runat="server" visible="false">
        <asp:Label ID="LabelScores" runat="server" Style="z-index: 1; left: 200px; top: 250px;
            position: absolute;" Text="Enter Score" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="TxtScores" runat="server" Style="z-index: 1; left: 350px; top: 250px;
                position: absolute" TabIndex="1" CausesValidation="true"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorScores" runat="server" ControlToValidate="TxtScores"
                ErrorMessage="Please enter First Name" ForeColor="Red" SetFocusOnError="true"
                Style="z-index: 1; left: 520px; top: 250px; position: absolute" Font-Size="Medium"></asp:RequiredFieldValidator>
         
            <asp:Label ID="LabelComments" runat="server" Style="z-index: 1; left: 200px; top: 300px;
            position: absolute;" Text="Enter Comments" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="TxtComments" runat="server" Style="z-index: 1; left: 350px; top: 300px;
                position: absolute" TabIndex="1" CausesValidation="true"></asp:TextBox>
            <asp:Button ID="ButtonSubmit" runat="server" onclick="ButtonSubmit_Click" 
           Style="z-index: 1; left: 350px; top: 350px; position: absolute" 
           Text="Submit" TabIndex="2"  />   
            </div>
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
    </div>
</asp:Content>
