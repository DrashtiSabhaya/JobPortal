<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterMain.master" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Content/landing-page.css" rel="stylesheet" />

    <section class="login">
        <div class="container-fluid">
            <div class="heading">
                <h1><span>Log</span> in</h1>
            </div>
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            <div class="page-card">
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-users"></i></span>
                    </div>
                    <asp:DropDownList runat="server" ID="userId">
                        <asp:ListItem Text="Log in As" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Job Seeker" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Recruiter" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Admin" Value="3"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                    </div>
                    <asp:TextBox runat="server" ID="email" placeholder="Enter Email" required="" CssClass="form-control" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-key"></i></span>
                    </div>
                    <asp:TextBox runat="server" ID="password" placeholder="Enter Password" required="" CssClass="form-control" TextMode="Password" />
                </div>
                <div class="form-group">
                    <asp:Button runat="server" CssClass="btn login_btn" Text="Log In" ID="btnLogin" OnClick="btnLogin_Click" />
                </div>
            </div>
        </div>
    </section>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
