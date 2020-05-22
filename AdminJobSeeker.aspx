<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminMaster.master" CodeFile="AdminJobSeeker.aspx.cs" Inherits="AdminJobSeeker" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Content/landing-page.css" rel="stylesheet" />
    <br />
    <br />
    <section>
        <div class="container-fluid">
            <div class="heading">
                <h1><span>Job Seeker </span>Profiles</h1>
            </div>
            <div class="container">
                <asp:GridView ID="GridView1" runat="server" CellPadding="3" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="JobConnection" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Height="253px" Width="1107px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
                        <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
                        <asp:ImageField DataImageUrlField="photo" HeaderText="Photo" SortExpression="photo" ControlStyle-Height="120px" ControlStyle-Width="120px">
                            <ControlStyle Height="120px" Width="120px"></ControlStyle>
                        </asp:ImageField>
                        <asp:BoundField DataField="gen" HeaderText="Gender" SortExpression="gen" />
                        <asp:BoundField DataField="dob" HeaderText="Date of Birth" SortExpression="dob" />
                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                        <asp:BoundField DataField="adrs" HeaderText="Address" SortExpression="adrs" />
                        <asp:BoundField DataField="mbno" HeaderText="Mobile No." SortExpression="mbno" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:CommandField ShowEditButton="true" ButtonType="Button" />
                        <asp:CommandField ShowDeleteButton="true" ButtonType="Button" />
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
                <asp:SqlDataSource ID="JobConnection" runat="server" ConnectionString="<%$ ConnectionStrings:JobConnection %>" SelectCommand="SELECT * FROM [Personal_details]"></asp:SqlDataSource>
            </div>
        </div>
    </section>
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
