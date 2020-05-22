<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMaster.master" CodeFile="UserJobs.aspx.cs" Inherits="UserJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Content/landing-page.css" rel="stylesheet" />
    <br />
    <br />
    <section class="search-jobs">
        <div class="container">
            <div class="heading">
                <h1>Latest <span>Job</span> Flow-Positions</h1>
            </div>
            <div class="search-text">
                <nav>
                    <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                        <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Search Jobs</a>
                        <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Applied Jobs</a>
                    </div>
                </nav>
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                        <div class="job">
                            <div class="row">
                                <div class="col-lg-8 col-md-12">
                                    <!-- -------job1------- -->
                                    <asp:Repeater ID="jobs" runat="server">
                                        <ItemTemplate>
                                            <table class="job-post-main row">
                                                <tr class="col-lg-9 col-md-9 job-post-info">
                                                    <td class="job-post-icon text-left">
                                                        <asp:TextBox ID="jobid" Text='<%#Eval("Id") %>' runat="server" Visible="false" />
                                                        <asp:TextBox ID="cmpid" Text='<%#Eval("cmp_id") %>' runat="server" Visible="false" />

                                                        <asp:Image runat="server" ID="Image1" ImageUrl='<%#Eval("photo") %>' CssClass="img" />
                                                    </td>
                                                </tr>
                                                <tr class="job-single-sec">
                                                    <td>
                                                        <h5>
                                                            <asp:Label ID="Label1" Text='<%#Eval("name") %>' runat="server"></asp:Label></h5>
                                                    </td>
                                                    <td>
                                                        <p class="my-2">
                                                            <asp:Label ID="Label6" Text='<%#Eval("post_nm") %>' runat="server"></asp:Label>
                                                        </p>
                                                    </td>
                                                    <td class="job-list-info d-flex">
                                                        <ul class="job-list-info d-flex">
                                                            <li><i class="fa fa-map-marker"></i>
                                                                <asp:Label ID="Label3" Text='<%#Eval("location") %>' runat="server"></asp:Label>
                                                            </li>
                                                            <li><i class="fa fa-rupee"></i>
                                                                <asp:Label ID="Label4" Text='<%#Eval("lsalary") %>' runat="server"></asp:Label>
                                                                -
                                                                <asp:Label ID="Label5" Text='<%#Eval("usalary") %>' runat="server"></asp:Label>
                                                                / Annum</li>
                                                        </ul>
                                                    </td>
                                                    <td class="col-lg-3 col-md-3 job-single-time text-right">
                                                        <p style="float: right">
                                                            <span><i class="fa fa-heart-o"></i>
                                                                <asp:Label ID="Label2" Text='<%#Eval("type") %>' runat="server"></asp:Label></span>
                                                            <asp:Button Text="Apply Now" CssClass="btn apply-btn" runat="server" OnClick="Apply_Job" />
                                                        </p>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <div class="col-lg-4 col-md-12">
                                    <img src="images/job-1.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                        <div class="job">
                            <div class="row">
                                <div class="col-lg-4 col-md-12 mb-5">
                                    <img src="images/job-2.jpg" />
                                </div>
                                <div class="col-lg-8 col-md-12">
                                    <!-- -------job1------- -->
                                    <asp:Repeater ID="appliedjobs" runat="server">
                                        <ItemTemplate>
                                            <table class="job-post-main row">
                                                <tr class="col-lg-9 col-md-9 job-post-info">
                                                    <td class="job-post-icon text-left">
                                                        <asp:TextBox ID="jobid" Text='<%#Eval("Id") %>' runat="server" Visible="false" />
                                                        <asp:TextBox ID="cmpid" Text='<%#Eval("cmp_id") %>' runat="server" Visible="false" />

                                                        <asp:Image runat="server" ID="Image1" ImageUrl='<%#Eval("photo") %>' CssClass="img" />
                                                    </td>
                                                </tr>
                                                <tr class="job-single-sec">
                                                    <td>
                                                        <h5>
                                                            <asp:Label ID="Label1" Text='<%#Eval("name") %>' runat="server"></asp:Label></h5>
                                                    </td>
                                                    <td>
                                                        <p class="my-2">
                                                            <asp:Label ID="Label6" Text='<%#Eval("post_nm") %>' runat="server"></asp:Label>
                                                        </p>
                                                    </td>
                                                    <td class="job-list-info d-flex">
                                                        <ul class="job-list-info d-flex">
                                                            <li><i class="fa fa-map-marker"></i>
                                                                <asp:Label ID="Label3" Text='<%#Eval("location") %>' runat="server"></asp:Label>
                                                            </li>
                                                            <li><i class="fa fa-rupee"></i>
                                                                <asp:Label ID="Label4" Text='<%#Eval("lsalary") %>' runat="server"></asp:Label>
                                                                -
                                                                <asp:Label ID="Label5" Text='<%#Eval("usalary") %>' runat="server"></asp:Label>
                                                                / Annum</li>
                                                        </ul>
                                                    </td>
                                                    <td class="job-single-sec my-2">
                                                        <p>
                                                            <asp:Button Text="Delete" CssClass="btn apply-btn" runat="server" OnClick="Delete" />
                                                        </p>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:Repeater>
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
