<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/CompanyMaster.master" CodeFile="CompanyApplications.aspx.cs" Inherits="CompanyApplications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Content/landing-page.css" rel="stylesheet" />
    <br />
    <br />
    <section class="search-jobs">
        <div class="container">
            <div class="heading">
                <h1><span>Job</span> Applications</h1>
            </div>
            <div class="search-text">
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                        <div class="job">
                            <div class="row">
                                <div class="col-lg-8 col-md-12">
                                    <!-- -------job1------- -->
                                    <asp:Repeater ID="jobseeker" runat="server">
                                        <ItemTemplate>
                                            <table class="job-post-main row">
                                                <tr class="col-lg-9 col-md-9 job-post-info">
                                                    <td class="job-post-icon text-left">
                                                        <asp:TextBox ID="jobid" Text='<%#Eval("Id") %>' runat="server" Visible="false" />
                                                        <asp:Image runat="server" ID="Image1" ImageUrl='<%#Eval("photo") %>' CssClass="img" />
                                                    </td>
                                                </tr>
                                                <tr class="job-single-sec">
                                                    <td>
                                                        <h5>
                                                            <asp:Label ID="Label1" Text='<%#Eval("fname") %>' runat="server"></asp:Label></h5>
                                                    </td>
                                                    <td class="job-list-info d-flex">
                                                        <li><i class="fa fa-map-marker"></i>
                                                            <asp:Label ID="city" Text='<%#Eval("city") %>' runat="server"></asp:Label>
                                                        </li>
                                                    </td>
                                                    <td class="job-list-info d-flex">
                                                        <li class=""><i class="fa fa-envelope"></i>
                                                            <asp:Label ID="email" Text='<%#Eval("email") %>' runat="server"></asp:Label>
                                                        </li>
                                                    </td>
                                                    <td>
                                                        <p><i class="fa fa-eye"></i><a href="#">View full Profile</a></p>
                                                    </td>
                                                    <td class="job-single-sec my-2">
                                                        <p>
                                                            <asp:Button Text="Shortlist" CssClass="btn apply-btn" runat="server" OnClick="Shortlist_Employee" />
                                                        </p>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <div class="col-lg-4 col-md-12">
                                    <img src="images/job-1.jpg"/>
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
