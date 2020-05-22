<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminMaster.master" CodeFile="AdminFeedback.aspx.cs" Inherits="AdminFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Content/landing-page.css" rel="stylesheet" />
    <br />
    <br />
    <div class="container-fluid">
        <div class="heading">
            <h1><span>Feed </span>Back</h1>
        </div>
        <div class="container">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="3px" CellPadding="2" CellSpacing="2" DataKeyNames="Id" DataSourceID="JobConnection" Height="119px" Width="871px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Id" ControlStyle-Font-Size="Larger" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="nm" HeaderText="Name" SortExpression="nm" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="msg" HeaderText="Message" SortExpression="msg" />
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
            <asp:SqlDataSource ID="JobConnection" runat="server" ConnectionString="<%$ ConnectionStrings:JobConnection %>" SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
        </div>
    </div>
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
