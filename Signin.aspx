<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterMain.master" CodeFile="Signin.aspx.cs" Inherits="Signin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Content/landing-page.css" rel="stylesheet" />

    <section class="signin">
        <div class="container-fluid">
            <div class="heading">
                <h1><span>Sign</span> in</h1>
            </div>
            <div class="page-card">
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-users"></i></span>
                    </div>
                    <asp:DropDownList runat="server" ID="userId">
                        <asp:ListItem Text="Sign in As" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Job Seeker" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Recruiter" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Admin" Value="3"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                    </div>
                    <asp:TextBox runat="server" ID="usernm" placeholder="Enter Username" required="" CssClass="form-control" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                    </div>
                    <asp:TextBox runat="server" ID="email" placeholder="Enter Email" required="" CssClass="form-control" TextMode="Email" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-key"></i></span>
                    </div>
                    <asp:TextBox runat="server" ID="password" placeholder="Enter Password" required="" CssClass="form-control" TextMode="Password" />
                </div>
                <div class="form-group">
                    <asp:Button runat="server" CssClass="btn login_btn"
                        Text="Sign In" ID="btnSignin" OnClick="btnSignin_Click" />
                </div>
            </div>
        </div>
    </section>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
