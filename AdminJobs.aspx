<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminMaster.master" CodeFile="AdminJobs.aspx.cs" Inherits="AdminJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Content/landing-page.css" rel="stylesheet" />
    <br />
    <br />
    <div class="container-fluid">
        <div class="heading">
            <h1><span>Uploaded </span>Jobs</h1>
        </div>
        <div class="container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="JobConnection" Height="94px" Width="1007px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="cmp_id" HeaderText="cmp_id" SortExpression="cmp_id" />
                    <asp:BoundField DataField="post_nm" HeaderText="post_nm" SortExpression="post_nm" />
                    <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                    <asp:BoundField DataField="lsalary" HeaderText="lsalary" SortExpression="lsalary" />
                    <asp:BoundField DataField="usalary" HeaderText="usalary" SortExpression="usalary" />
                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
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
            <asp:SqlDataSource ID="JobConnection" runat="server" ConnectionString="<%$ ConnectionStrings:JobConnection %>" SelectCommand="SELECT * FROM [Job_post]"></asp:SqlDataSource>
        </div>
    </div>
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
