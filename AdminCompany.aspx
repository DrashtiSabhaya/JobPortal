<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminMaster.master" CodeFile="AdminCompany.aspx.cs" Inherits="AdminCompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Content/landing-page.css" rel="stylesheet" />
    <br />
    <br />
    <div class="container-fluid">
        <div class="heading">
            <h1><span>Company </span>Profiles</h1>
        </div>
        <div class="container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="JobConnection" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="86px" Width="1000px" OnRowDeleting="OnRowDeleting" OnRowDeleted="Page_Load">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                    <asp:BoundField DataField="adrs" HeaderText="Address" SortExpression="adrs" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="JobConnection" runat="server" ConnectionString="<%$ ConnectionStrings:JobConnection %>" SelectCommand="SELECT * FROM [Company]"></asp:SqlDataSource>
        </div>
    </div>
    <br /><br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
