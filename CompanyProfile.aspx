<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/CompanyMaster.master" CodeFile="CompanyProfile.aspx.cs" Inherits="CompanyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Content/landing-page.css" rel="stylesheet" />
    <section class="signin">
        <div class="container-fluid">
            <div class="heading">
                <h1>Company <span>Profile</span></h1>
            </div>
            <div class="page-card">
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                    </div>
                    <asp:TextBox runat="server" ID="name" placeholder="Enter Company Name" required="" CssClass="form-control" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                    </div>
                    <asp:TextBox runat="server" ID="email" placeholder="Enter Email" required="" CssClass="form-control" Enabled="false" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-map-marker"></i></span>
                    </div>
                    <asp:TextBox runat="server" ID="city" placeholder="Enter City" required="" CssClass="form-control" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-address-card"></i></span>
                    </div>
                    <asp:TextBox runat="server" ID="address" class="form-control" placeholder="Enter Address" TextMode="MultiLine" required="" />
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-photo"></i></span>
                    </div>
                    <asp:FileUpload ID="photo" runat="server" required="" />Choose Profile Picture
                </div>
                <div class="form-group">
                    <asp:Button runat="server" CssClass="btn login_btn"
                        Text="Save" ID="btnSignin" OnClick="btnSave_Click" />
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
