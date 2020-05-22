<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMaster.master" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Content/landing-page.css" rel="stylesheet" />
    <br />
    <br />
    <section class="search-jobs">
        <div class="container">
            <div class="heading">
                <h1>Personal <span>Profile</span></h1>
            </div>
            <div class="search-text">
                <div class="tab-content" id="nav-tabContent">

                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                        <div class="job">
                            <div class="row">
                                <div class="col-lg-5 col-md-12 page-card">
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-user-o"></i></span>
                                        </div>
                                        <asp:TextBox runat="server" ID="fname" CssClass="form-control" placeholder="Enter First Name" required="" />
                                    </div>
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-user"></i></span>
                                        </div>
                                        <asp:TextBox runat="server" ID="lname" CssClass="form-control" placeholder="Enter Last Name" required="" />
                                    </div>
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-photo"></i></span>
                                        </div>
                                        <asp:FileUpload ID="photo" runat="server" required="" />Choose Profile Picture
                                    </div>
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-users"></i></span>
                                        </div>
                                        <asp:DropDownList runat="server" ID="gender" Width="395px" required="">
                                            <asp:ListItem Text="Select Gender" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                        </div>
                                        <asp:TextBox ID="dob" runat="server" Style="overflow: hidden;" TextMode="Date" CssClass="form-control" required="" />
                                    </div>
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-map-marker"></i></span>
                                        </div>
                                        <asp:TextBox runat="server" ID="city" CssClass="form-control" placeholder="Enter City" required="" />
                                    </div>
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-address-card"></i></span>
                                        </div>
                                        <asp:TextBox runat="server" ID="address" class="form-control" placeholder="Enter Address" TextMode="MultiLine" required="" />
                                    </div>
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-phone"></i></span>
                                        </div>
                                        <asp:TextBox runat="server" ID="mbno" CssClass="form-control" placeholder="Enter Mobile no" required="" />
                                    </div>
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                                        </div>
                                        <asp:TextBox runat="server" ID="email" CssClass="form-control" placeholder="Enter Email" TextMode="Email" required="" Enabled="false" />
                                    </div>
                                    <div class="form-group">
                                        <asp:Button runat="server" CssClass="btn login_btn" Text="Save" ID="btnpersonalsave" OnClick="btnPersonalSave_click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
