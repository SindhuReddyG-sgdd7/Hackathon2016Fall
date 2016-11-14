<%@ Page Title="" Language="C#" MasterPageFile="~/PresentationLayer/Admin.master" AutoEventWireup="true" CodeBehind="AdminViewScores.aspx.cs" Inherits="ScoringApplication.ViewScores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderAdmin" runat="server">
    <asp:Label ID="lblTitle" runat="server" Text="TEAM SCORES" Style="z-index: 1; left: 10px; position:absolute; " 
            Font-Bold="True" Font-Size="Larger"
                ForeColor="#333300" ></asp:Label>
    <div style="position:absolute;left:30px;top:50px;">
<asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" AutoGenerateColumns="False" 
        onpageindexchanging="GridView1_PageIndexChanging1" Height="10px" 
    Width="572px" AllowPaging="True" style="margin-left: 64px" PageSize="2" >
        <Columns>
            <asp:TemplateField HeaderText="Team Name ">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" 
                        Text='<%# DataBinder.Eval(Container.DataItem, "TeamName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Scores">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" 
                        Text='<%# DataBinder.Eval(Container.DataItem, "Score") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Comments">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" 
                        Text='<%# DataBinder.Eval(Container.DataItem, "Comments") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
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
    </div>
</asp:Content>
