<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMaster.master" CodeFile="UserContact.aspx.cs" Inherits="UserContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="feedback">
        <div class="container-fluid">
            <div class="heading">
                <h1><span>Feed</span>back</h1>
            </div>
            <div class="page-card">
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user-o"></i></span>
                    </div>
                    <asp:TextBox ID="name" runat="server" CssClass="form-control" placeholder="Enter Name" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                    </div>
                    <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Enter Email" TextMode="Email" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-comments-o"></i></span>
                    </div>
                    <asp:TextBox runat="server" ID="message" class="form-control" placeholder="Your Message.." TextMode="MultiLine" required="" />
                </div>
                <div class="form-group">
                    <asp:Button runat="server" CssClass="btn login_btn" Text="Save" ID="savefeedback" OnClick="btnSaveFeedback_click" />
                </div>
            </div>
        </div>
    </section>

    <link href="Content/landing-page.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
