<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMaster.master" CodeFile="EducationalProfile.aspx.cs" Inherits="EducationalProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Content/landing-page.css" rel="stylesheet" />
    <br />
    <br />
    <section class="search-jobs">
        <div class="container">
            <div class="heading">
                <h1>Educational <span>Profile</span></h1>
            </div>
                <div class="job">
                    <div class="row">
                        <div class="col-lg-5 col-md-12 page-card">
                            <!-- -------job1------- -->
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-percent"></i></span>
                                </div>
                                <asp:TextBox runat="server" ID="ssc" CssClass="form-control" placeholder="Enter SSC Percentage" />
                            </div>
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-percent"></i></span>
                                </div>
                                <asp:TextBox runat="server" ID="hsc" CssClass="form-control" placeholder="Enter HSC Percentage" />
                            </div>
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-certificate"></i></span>
                                </div>
                                <asp:DropDownList runat="server" ID="gcourse" Width="395px">
                                    <asp:ListItem Text="Graduation Course" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="BE" Value="BE"></asp:ListItem>
                                    <asp:ListItem Text="BCA" Value="BCA"></asp:ListItem>
                                    <asp:ListItem Text="BBA" Value="BBA"></asp:ListItem>
                                    <asp:ListItem Text="BCom" Value="BCom"></asp:ListItem>
                                    <asp:ListItem Text="BSc" Value="Bsc"></asp:ListItem>
                                    <asp:ListItem Text="BA" Value="BA"></asp:ListItem>
                                </asp:DropDownList>

                            </div>
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-university"></i></span>
                                </div>
                                <asp:TextBox runat="server" ID="guni" CssClass="form-control" placeholder="Enter University/College" />
                            </div>

                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-graduation-cap"></i></span>
                                </div>
                                <asp:TextBox runat="server" ID="gcgpa" CssClass="form-control" placeholder="Enter CGPA" />
                            </div>

                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-certificate"></i></span>
                                </div>
                                <asp:DropDownList runat="server" ID="pgcourse" Width="395px">
                                    <asp:ListItem Text="Post Graduation Course" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="ME" Value="ME"></asp:ListItem>
                                    <asp:ListItem Text="MCA" Value="MCA"></asp:ListItem>
                                    <asp:ListItem Text="MBA" Value="MBA"></asp:ListItem>
                                    <asp:ListItem Text="MCom" Value="MCom"></asp:ListItem>
                                    <asp:ListItem Text="MSc" Value="MSc"></asp:ListItem>
                                    <asp:ListItem Text="MA" Value="MA"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-university"></i></span>
                                </div>
                                <asp:TextBox runat="server" ID="pguni" CssClass="form-control" placeholder="Enter University/College" />
                            </div>

                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-graduation-cap"></i></span>
                                </div>
                                <asp:TextBox runat="server" ID="pgcgpa" CssClass="form-control" placeholder="Enter CGPA" />
                            </div>

                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-trophy"></i></span>
                                </div>
                                <asp:TextBox runat="server" ID="award" CssClass="form-control" placeholder="Enter Award" />
                            </div>
                            <div class="form-group">
                                <asp:Button runat="server" CssClass="btn login_btn" Text="Save" ID="btneducationsave" OnClick="btnEducationSave_click" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>
    </section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
