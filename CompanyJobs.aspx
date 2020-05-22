<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/CompanyMaster.master" CodeFile="CompanyJobs.aspx.cs" Inherits="CompanyJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Content/landing-page.css" rel="stylesheet" />
    <section class="signin">
        <div class="container-fluid">
            <div class="heading">
                <h1><span>Post</span> a Job</h1>
            </div>
            <div class="page-card">
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-map-marker"></i></span>
                    </div>
                    <asp:TextBox runat="server" ID="location" placeholder="Enter Location" required="" CssClass="form-control" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-briefcase"></i></span>
                    </div>
                    <asp:TextBox runat="server" ID="post_nm" placeholder="Enter Post Name" required="" CssClass="form-control" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-rupee"></i></span>
                    </div>
                    <asp:TextBox runat="server" ID="lsal" placeholder="Enter (Lower Bound) Salary" required="" CssClass="form-control" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-rupee"></i></span>
                    </div>
                    <asp:TextBox runat="server" ID="usal" placeholder="Enter (Upper Bound) Salary" required="" CssClass="form-control" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-house-day"></i></span>
                    </div>
                    <asp:DropDownList runat="server" ID="type" required="">
                        <asp:ListItem Text="Select Job Type" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Full Time" Value="Full Time"></asp:ListItem>
                        <asp:ListItem Text="Part Time" Value="Part Time"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:Button runat="server" CssClass="btn login_btn"
                        Text="POst Job" ID="btnSignin" OnClick="btnJobPost_Click" />
                    <asp:Button runat="server" CssClass="btn login_btn"
                        Text="Edit" ID="Button1" OnClick="btnEdit_Click" />
                </div>
            </div>
        </div>
    </section>
    <section class="search-jobs">
        <div class="container">
            <div class="heading">
                <h1>Posted <span>Jobs</span></h1>
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="JobConnection" Height="107px" Width="1085px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="cmp_id" HeaderText="Email" SortExpression="cmp_id" />
                    <asp:BoundField DataField="post_nm" HeaderText="Post Name" SortExpression="post_nm" />
                    <asp:BoundField DataField="location" HeaderText="Location" SortExpression="location" />
                    <asp:BoundField DataField="lsalary" HeaderText="Lower-Salary" SortExpression="lsalary" />
                    <asp:BoundField DataField="usalary" HeaderText="Upper-Salary" SortExpression="usalary" />
                    <asp:BoundField DataField="type" HeaderText="Job Type" SortExpression="type" />
                    <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                    <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Edit" ShowHeader="True" Text="Edit" />
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
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
